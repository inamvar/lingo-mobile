import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Search/SearchResponseDtoUseCase.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';

abstract class GeneralRemoteDataSource {
  Future<BaseNetworkResponse<SearchResponseDtoUseCase>> search(
      GetPackagesRequestDtoUseCase requestDtoUseCase);
}