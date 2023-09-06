import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Dto/Models/Package.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class IGetGoldenPackageUseCase
    extends IUseCase<BaseNetworkResponse<Package>, NoParams> {}
