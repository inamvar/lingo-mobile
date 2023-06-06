class ApiEndpoints{
  /// Auth Endpoints
  static const String login = "Auth/SignIn";
  static const String register = "Auth/SingnUp";
  static const String refreshToken = "Auth/RefreshToken";
  static const String logout = "Auth/Signout";

  ///User Endpoints
  static const String forgotPass = "User/ResetPasswordRequest";
  static const String resetPass = "User/ResetPassword";
  static const String profile = "User/Profile";

  ///Packages Endpoints
  static const String findAll = "Package";
}