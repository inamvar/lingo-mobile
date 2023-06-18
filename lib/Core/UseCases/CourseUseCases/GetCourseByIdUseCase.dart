import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Interfaces/Repositories/CourseRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/Course/IGetCourseByIdUseCase.dart';

class GetCourseByIdUseCase extends IGetCourseByIdUseCase {
  final CourseRemoteRepository repository;

  GetCourseByIdUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<Course>>> execute(
      {String? params}) async {
    return await repository.getCourseById(params!);
  }
}
