import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Course/GetCoursesResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/CourseRemoteDataSource.dart';

import '../../../Core/Dto/UseCases/Responses/ResponseDtoUseCase.dart';
import '../../../Core/Helpers/BaseBrain.dart';
import '../../../Core/Utils/ApiEndpoints.dart';

class CourseRemoteDataSourceImpl extends CourseRemoteDataSource {
  @override
  Future<BaseNetworkResponse<GetCoursesResponseDtoUseCase>> getPackageCourses(
      PaginationRequestDtoUseCase requestDtoUseCase) async {
    var dio = BaseBrain.dio;

    var result = await dio
        .get(
      "${ApiEndpoints.findAll}/${requestDtoUseCase.path}",
      queryParameters: requestDtoUseCase.toJson(),
    )
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<GetCoursesResponseDtoUseCase>(
          data: GetCoursesResponseDtoUseCase.fromJson(response.data!),
          message: response.message);
    });

    return result;
  }

  @override
  Future<BaseNetworkResponse<Course>> getCourseById(String courseId) async {
    var dio = BaseBrain.dio;

    var result = await dio
        .get(
      "${ApiEndpoints.course}/$courseId",
    )
        .then((value) {
      ResponseDtoUseCase response = ResponseDtoUseCase.fromJson(value.data);
      return BaseNetworkResponse<Course>(
          data: Course.fromJson(response.data!),
          message: response.message);
    });

    return result;
  }
}
