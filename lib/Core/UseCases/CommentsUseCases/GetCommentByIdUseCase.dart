import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/Message.dart';
import 'package:lingo/Core/Interfaces/Repositories/CommentsRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/Comments/IGetCommentByIdUseCase.dart';

class GetCommentByIdUseCase extends IGetCommentByIdUseCase{
  final CommentsRemoteRepository repository;

  GetCommentByIdUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<Message>>> execute({int? params}) async {
    return await repository.getCommentById(params!)!;
  }

}