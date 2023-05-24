import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';

abstract class IUseCase<Type, Params> {
  Future<Either<Failure, Type>> execute({Params? params});
}
