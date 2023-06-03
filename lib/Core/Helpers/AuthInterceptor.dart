import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Enums/MessageType.dart';
import 'package:lingo/Core/Dto/Models/ServerFailure.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Helpers/ShowMessage.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/IRefreshTokenUseCase.dart';
import 'package:lingo/infrastructure/DataSources/Local/IdentityLocalDataSourceImpl.dart';
import 'package:intl/intl.dart';
import '../Dto/UseCases/Requests/Auth/RefreshTokenRequestDtoUseCase.dart';

class AuthInterceptor extends Interceptor {
  IRefreshTokenUseCase? iRefreshTokenUseCase;

  Dio _mainDio;

  AuthInterceptor(this._mainDio, {this.iRefreshTokenUseCase});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (BaseBrain.authToken != null) {
      options.headers["Authorization"] =
          "Bearer ${BaseBrain.authToken!.accessToken}";
    }
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      if (BaseBrain.authToken != null) {
        DateFormat dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSSSSSZZZZ");
        DateTime expireDate =
            dateFormat.parse(BaseBrain.authToken!.accessTokenExpiresAt!);
        DateTime currentDate = DateTime.now();
        if (currentDate.isAfter(expireDate) ||
            currentDate.isAtSameMomentAs(expireDate)) {
          await refreshToken();

          RequestOptions? requestOptions = err.response?.requestOptions
              .copyWith(headers: {
            "Authorization": "Bearer ${BaseBrain.authToken!.accessToken}"
          });

          try {
            Response response = await _mainDio.fetch(requestOptions!);
            return handler.resolve(response);
          } on DioError catch (e) {
            return handler.next(e);
          }
        }
      }
    }

    return super.onError(err, handler);
  }

  Future<void> refreshToken() async {
    await iRefreshTokenUseCase
        ?.execute(
            params: RefreshTokenRequestDtoUseCase(
                refreshToken: BaseBrain.authToken!.refreshToken!))
        .then((value) {
      value.fold((l) {
        if (l is ServerFailure) {
          if (kDebugMode) {
            print(l.errorMessage);
          }

          if(l.statusCode == 401){
            ShowMessage.getSnackBar(
                message: StringResource.unauthError, type: MessageType.ERROR);
            _mainDio.options.headers.remove("Authorization");
            BaseBrain.logout();
          }
        }
      }, (r) async {
        await IdentityLocalDataSourceImpl.saveToken(r.data!);
        if(kDebugMode){
          print("token refreshed");
        }
      });
    });
  }
}
