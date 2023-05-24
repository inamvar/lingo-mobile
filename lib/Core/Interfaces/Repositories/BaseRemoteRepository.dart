import 'package:dio/dio.dart';

import '../../Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import '../../Dto/Models/ServerFailure.dart';

abstract class BaseRemoteRepository{
  ServerFailure parseServerError(DioError error){
    var serverError = ServerFailure();
    var errorData = error.response?.data;
    if (errorData != null) {
      var errorResponse = ResponseDtoUseCase.fromJson(errorData);
      if (errorResponse.errorMessages != null &&
          errorResponse.errorMessages!.isNotEmpty) {
        serverError.errorMessage = errorResponse.errorMessages![0];
      }
    }
    return serverError;
  }
}