import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Search/SearchResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/BaseRemoteRepository.dart';

import '../../Dto/Models/BaseNetworkResponse.dart';

abstract class GeneralRemoteRepository extends BaseRemoteRepository{
  Future<Either<Failure, BaseNetworkResponse<SearchResponseDtoUseCase>>>? search(
      PaginationRequestDtoUseCase requestDtoUseCase);
}