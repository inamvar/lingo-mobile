import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Comments/GetCommentsResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/CommentsRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/Comments/IGetCommentsUseCase.dart';

class GetCommentsUseCase extends IGetCommentsUseCase {

  final CommentsRemoteRepository repository;

  GetCommentsUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<GetCommentsResponseDtoUseCase>>>
      execute({PaginationRequestDtoUseCase? params}) async {
    return await repository.getComments(params!)!;
  }
}
