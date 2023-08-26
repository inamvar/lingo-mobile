import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Search/SearchResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/GeneralRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/ISearchByTagUseCase.dart';

class SearchByTagUseCase extends ISearchByTagUseCase {
  final GeneralRemoteRepository repository;

  SearchByTagUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<SearchResponseDtoUseCase>>>
      execute({PaginationRequestDtoUseCase? params}) async {
    return await repository.searchByTag(params!)!;
  }
}
