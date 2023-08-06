import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/Message.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Comments/SendMessageRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Comments/GetCommentsResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/BaseRemoteRepository.dart';

import '../../Dto/Models/BaseNetworkResponse.dart';
import '../../Dto/Models/Failure.dart';
import '../../Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';

abstract class CommentsRemoteRepository extends BaseRemoteRepository {
  Future<Either<Failure, BaseNetworkResponse<GetCommentsResponseDtoUseCase>>>?
      getComments(PaginationRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>? addComment(
      SendMessageRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, BaseNetworkResponse<Message>>>? getCommentById(int id);
}
