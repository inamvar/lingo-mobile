import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Packages/GetPackagesResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class IGetPackagesUseCase extends IUseCase<BaseNetworkResponse<GetPackagesResponseDtoUseCase>,
GetPackagesRequestDtoUseCase>{}