import 'package:lingo/Core/Dto/Models/Failure.dart';

class ServerFailure extends Failure {

  ServerFailure({errorMessage}){
    this.errorMessage = errorMessage;
  }
}