import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/Video.dart';
import 'package:lingo/Core/Interfaces/Repositories/CourseRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/Course/IGetVideoBySlugUseCase.dart';

class GetVideoBySlugUseCase extends IGetVideoBySlugUseCase {
  final CourseRemoteRepository repository;

  GetVideoBySlugUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<Video>>> execute(
      {String? params}) async {
    return await repository.getVideoBySlug(params!);
  }
}
