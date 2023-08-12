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
  static const String changePassword = "User/ChangePassword";
  static const String checkPhone = "User/PhoneNumberStatus";
  static const String requestPhoneConfirm = "User/ConfirmPhoneNumberRequest";
  static const String confirmPhone = "User/ConfirmPhoneNumber";

  ///Packages Endpoints
  static const String findAll = "Package";

  ///Course Endpoints
  static const String course = "Course";

  ///Report Endpoints
  static const String purchasedCourses = "Report/PurchasedCourses";
  static const String orderHistory = "Report/OrderHistory";
  static const String orderPdfDownload = "Report/GetOrderHistoryPdf";

  ///Comments Endpoints
  static const String comments = "Comment";
  static const String addComment = "Comment/ToAdmin";

  ///General Endpoints
  static const String search = "Search";
  static const String createOrder = "Order";
}