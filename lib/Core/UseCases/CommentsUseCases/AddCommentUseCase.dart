import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Comments/SendMessageRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/CommentsRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/Comments/IAddCommentUseCase.dart';

class AddCommentUseCase extends IAddCommentUseCase {

  final CommentsRemoteRepository repository;

  AddCommentUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>> execute(
      {SendMessageRequestDtoUseCase? params}) async {
    return await repository.addComment(params!)!;
  }
}
