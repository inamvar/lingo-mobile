import 'package:lingo/Core/Entities/Failure.dart';

class ServerFailure extends Failure {

  ServerFailure({errorMessage}){
    this.errorMessage = errorMessage;
  }
}