import 'package:lingo/Core/Dto/Models/Message.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Comments/SendMessageRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Comments/GetCommentsResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';
import '../../../Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import '../../../Dto/UseCases/Responses/Packages/GetPackagesResponseDtoUseCase.dart';

abstract class CommentsRemoteDataSource {
  Future<BaseNetworkResponse<GetCommentsResponseDtoUseCase>> getComments(
      PaginationRequestDtoUseCase requestDtoUseCase
      );

  Future<BaseNetworkResponse<ResponseDtoUseCase>> addComment(
       SendMessageRequestDtoUseCase requestDtoUseCase
      );

  Future<BaseNetworkResponse<Message>> getCommentById(
      int id
      );
}