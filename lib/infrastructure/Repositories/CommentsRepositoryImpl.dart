import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Comments/SendMessageRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Comments/GetCommentsResponseDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/CommentsRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/Repositories/CommentsRemoteRepository.dart';

class CommentsRepositoryImpl extends CommentsRemoteRepository {
  final CommentsRemoteDataSource dataSource;

  CommentsRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, BaseNetworkResponse<GetCommentsResponseDtoUseCase>>>?
      getComments(PaginationRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await dataSource.getComments(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<ResponseDtoUseCase>>>? addComment(
      SendMessageRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await dataSource.addComment(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }
}
