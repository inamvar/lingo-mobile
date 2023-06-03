import 'dart:convert';

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
    if(!prefs.containsKey("token")) return null;
    return TokenResponseDtoUseCase.fromJson(
        jsonDecode(prefs.getString("token") ?? ""));
  }
}
