import 'dart:convert';

import 'package:lingo/Core/Dto/Models/User.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Auth/TokenResponseDtoUseCase.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IdentityLocalDataSourceImpl {
  static Future<bool> saveToken(TokenResponseDtoUseCase token) async {
    final prefs = await SharedPreferences.getInstance();
    BaseBrain.authToken = token;
    return prefs.setString('token', jsonEncode(token.toJson()));
  }

  static Future<TokenResponseDtoUseCase?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey("token")) return null;
    return TokenResponseDtoUseCase.fromJson(
        jsonDecode(prefs.getString("token") ?? ""));
  }

  static Future<bool> saveUser(User user) async {
    final prefs = await SharedPreferences.getInstance();
    BaseBrain.user.value = user;
    BaseBrain.isLogin.value = true;
    return prefs.setString('user', jsonEncode(user.toJson()));
  }

  static Future<User?> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey("user")) return null;
    return User.fromJson(jsonDecode(prefs.getString("user") ?? ""));
  }

  static Future<bool> logout() async {
    final prefs = await SharedPreferences.getInstance();
    var s = await Future.wait([prefs.remove("user"), prefs.remove("token")])
        .then((value) {
      return true;
    });

    return s;
  }
}
