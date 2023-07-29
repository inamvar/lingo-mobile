import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/OrderHistoryResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/PurchasedCoursesResponse.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/ReportRemoteDataSource.dart';

import '../../../Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import '../../../Core/Helpers/BaseBrain.dart';
import '../../../Core/Utils/ApiEndpoints.dart';

class ReportRemoteDataSourceImpl extends ReportRemoteDataSource {
  @override
  Future<BaseNetworkResponse<PurchasedCoursesResponse>> getMyCourses(
      PaginationRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;
    var url = ApiEndpoints.purchasedCourses;
    var result = await dio
        .get(url, queryParameters: requestDtoUseCase.toJson())
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<PurchasedCoursesResponse>(
          data: PurchasedCoursesResponse.fromJson(response.data!),
          message: response.message);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<OrderHistoryResponse>> getMyTransactions(
      PaginationRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;
    var url = ApiEndpoints.orderHistory;
    var result = await dio
        .get(url, queryParameters: requestDtoUseCase.toJson())
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<OrderHistoryResponse>(
          data: OrderHistoryResponse.fromJson(response.data!),
          message: response.message);
    });

    return result;
  }
}
