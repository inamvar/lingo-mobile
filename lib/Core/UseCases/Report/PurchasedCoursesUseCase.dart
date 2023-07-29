import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/PurchasedCoursesResponse.dart';
import 'package:lingo/Core/Interfaces/Repositories/ReportRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/Report/IPurchasedCoursesUseCase.dart';

class PurchasedCoursesUseCase extends IPurchasedCoursesUseCase {
  ReportRemoteRepository remoteRepository;

  PurchasedCoursesUseCase(this.remoteRepository);

  @override
  Future<Either<Failure, BaseNetworkResponse<PurchasedCoursesResponse>>>
      execute({PaginationRequestDtoUseCase? params}) async {
    return await remoteRepository.getMyCourses(params!);
  }
}
