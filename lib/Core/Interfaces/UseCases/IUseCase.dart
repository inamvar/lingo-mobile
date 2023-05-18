import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Entities/Failure.dart';

abstract class IUseCase<Type, Params> {
  Future<Either<Failure, Type>> execute({Params? params});
}
