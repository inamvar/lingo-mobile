class BaseNetworkResponse<Data>{
  final Data? data;
  final String? message;

  BaseNetworkResponse({this.message, this.data});
}