import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Course/GetCoursesResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/DataSources/Remote/CourseRemoteDataSource.dart';
import 'package:lingo/Core/Interfaces/Repositories/CourseRemoteRepository.dart';

class CourseRepositoryImpl extends CourseRemoteRepository {
  final CourseRemoteDataSource dataSource;

  CourseRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, BaseNetworkResponse<GetCoursesResponseDtoUseCase>>>
      getPackageCourses(GetPackagesRequestDtoUseCase requestDtoUseCase) async {
    try {
      var result = await dataSource.getPackageCourses(requestDtoUseCase);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }

  @override
  Future<Either<Failure, BaseNetworkResponse<Course>>> getCourseById(
      String courseId) async {
    try {
      var result = await dataSource.getCourseById(courseId);
      return Right(result);
    } on DioError catch (error) {
      return Left(parseServerError(error));
    }
  }
}
