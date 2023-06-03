
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/User.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/TokenResponseDtoUseCase.dart';

class BaseBrain{
  static String baseDomain = "http://45.92.93.170:5004/api/v1/";
  static late Dio dio;
  static TokenResponseDtoUseCase? authToken;
  static Rx<User> user = User().obs;

  static void logout() {
    authToken = null;
  }
}