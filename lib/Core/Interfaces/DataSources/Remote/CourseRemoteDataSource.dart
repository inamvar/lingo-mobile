import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Core/Dto/Models/Video.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Course/GetCoursesResponseDtoUseCase.dart';

abstract class CourseRemoteDataSource {
  Future<BaseNetworkResponse<GetCoursesResponseDtoUseCase>> getPackageCourses(
      PaginationRequestDtoUseCase requestDtoUseCase);

  Future<BaseNetworkResponse<Course>> getCourseById(String courseId);

  Future<BaseNetworkResponse<Video>> getVideoBySlug(String slug);
}
