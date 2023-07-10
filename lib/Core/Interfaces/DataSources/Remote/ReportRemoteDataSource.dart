import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/PurchasedCoursesResponse.dart';

import '../../../Dto/Models/BaseNetworkResponse.dart';

abstract class ReportRemoteDataSource {
  Future<BaseNetworkResponse<PurchasedCoursesResponse>> getMyCourses(GetPackagesRequestDtoUseCase requestDtoUseCase);
}