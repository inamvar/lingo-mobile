import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Search/SearchResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class ISearchUseCase
    implements
        IUseCase<BaseNetworkResponse<SearchResponseDtoUseCase>,
            GetPackagesRequestDtoUseCase> {}
