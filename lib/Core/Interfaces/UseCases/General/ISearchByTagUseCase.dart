import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';
import '../../../Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import '../../../Dto/UseCases/Responses/Search/SearchResponseDtoUseCase.dart';

abstract class ISearchByTagUseCase extends IUseCase<
    BaseNetworkResponse<SearchResponseDtoUseCase>,
    PaginationRequestDtoUseCase> {}
