import 'package:dio/dio.dart';
import 'package:lingo/Core/Configs/StringResource.dart';

import '../../Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import '../../Dto/Models/ServerFailure.dart';

abstract class BaseRemoteRepository{
  ServerFailure parseServerError(DioError error){
    var serverError = ServerFailure();
    var errorData = error.response?.data;
    serverError.errorMessage = StringResource.serverErrorOccurred;
    if (errorData != null) {
      var errorResponse = ResponseDtoUseCase.fromJson(errorData);
      if (errorResponse.errorMessages != null &&
          errorResponse.errorMessages!.isNotEmpty) {
        serverError.errorMessage = errorResponse.errorMessages![0];
      }
      serverError.statusCode = error.response?.statusCode;
    }
    return serverError;
  }
}