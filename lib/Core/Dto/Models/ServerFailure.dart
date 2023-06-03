import 'package:lingo/Core/Dto/Models/Failure.dart';

class ServerFailure extends Failure {
  int? statusCode;
  ServerFailure( {this.statusCode,errorMessage}){
    this.errorMessage = errorMessage;
  }
}