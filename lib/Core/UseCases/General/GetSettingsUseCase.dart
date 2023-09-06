import 'package:dartz/dartz.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Dto/Models/Setting.dart';
import 'package:lingo/Core/Interfaces/Repositories/GeneralRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/IGetSettingsUseCase.dart';

class GetSettingsUseCase extends IGetSettingsUseCase {
  final GeneralRemoteRepository repository;

  GetSettingsUseCase(this.repository);

  @override
  Future<Either<Failure, BaseNetworkResponse<List<Setting>>>> execute(
      {NoParams? params}) async{
    return await repository.getSettings()!;
  }
}
