import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Packages/GetPackagesRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Course/GetCoursesResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/CourseRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/Course/IGetPackageCoursesUseCase.dart';

class GetPackageCoursesUseCase extends IGetPackageCoursesUseCase {
  CourseRemoteRepository repository;

  GetPackageCoursesUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<GetCoursesResponseDtoUseCase>>>
      execute({GetPackagesRequestDtoUseCase? params}) async {
    return await repository.getPackageCourses(params!);
  }
}
