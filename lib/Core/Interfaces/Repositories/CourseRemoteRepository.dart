import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Course/GetCoursesResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/BaseRemoteRepository.dart';
import 'package:dartz/dartz.dart';

abstract class CourseRemoteRepository extends BaseRemoteRepository {
  Future<Either<Failure, BaseNetworkResponse<GetCoursesResponseDtoUseCase>>>
      getPackageCourses(PaginationRequestDtoUseCase requestDtoUseCase);

  Future<Either<Failure, BaseNetworkResponse<Course>>> getCourseById(
      String courseId);
}
