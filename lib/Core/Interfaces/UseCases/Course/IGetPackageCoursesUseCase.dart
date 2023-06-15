import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Course/GetCoursesResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class IGetPackageCoursesUseCase extends IUseCase<
    BaseNetworkResponse<GetCoursesResponseDtoUseCase>,
    GetPackagesRequestDtoUseCase> {}
