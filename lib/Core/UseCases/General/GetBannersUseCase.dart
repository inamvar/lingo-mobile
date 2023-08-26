import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/Banner.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/General/GetBannersResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/GeneralRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/IGetBannersUseCase.dart';

class GetBannersUseCase extends IGetBannersUseCase {
  final GeneralRemoteRepository repository;

  GetBannersUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<GetBannersResponseDtoUseCase>>> execute(
      {NoParams? params}) async {
    return await repository.getBanners()!;
  }
}
