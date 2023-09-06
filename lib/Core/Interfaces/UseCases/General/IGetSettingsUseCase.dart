import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Dto/Models/Setting.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class IGetSettingsUseCase
    extends IUseCase<BaseNetworkResponse<List<Setting>>, NoParams> {}
