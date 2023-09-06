
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Setting.dart';
import 'package:lingo/Core/Dto/Models/User.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/TokenResponseDtoUseCase.dart';

import '../../infrastructure/DataSources/Local/IdentityLocalDataSourceImpl.dart';

class BaseBrain{
  static String baseDomain = "http://45.92.93.170:5004/api/v1/";
  static late Dio dio;
  static TokenResponseDtoUseCase? authToken;
  static Rx<User> user = User().obs;
  static Rx<bool> isLogin = false.obs;
  static List<Setting> settings = [];

  static Future<bool> logout() async{
    authToken = null;
    user.value = User();
    isLogin.value = false;
    return await IdentityLocalDataSourceImpl.logout();
  }

  static Future<void> init() async{
    authToken = await IdentityLocalDataSourceImpl.getToken();
    IdentityLocalDataSourceImpl.getUser().then((value) {
      if(value != null) {
        user.value = value;
        isLogin.value = true;
      }
    });
  }
}