import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Course/GetCoursesResponseDtoUseCase.dart';

abstract class CourseRemoteDataSource {
  Future<BaseNetworkResponse<GetCoursesResponseDtoUseCase>> getPackageCourses(
      GetPackagesRequestDtoUseCase requestDtoUseCase);

  Future<BaseNetworkResponse<Course>> getCourseById(String courseId);
}
