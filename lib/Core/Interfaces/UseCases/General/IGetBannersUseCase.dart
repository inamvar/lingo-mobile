import 'package:lingo/Core/Dto/Models/Banner.dart';
import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/NoParams.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/General/GetBannersResponseDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class IGetBannersUseCase
    extends IUseCase<BaseNetworkResponse<GetBannersResponseDtoUseCase>, NoParams> {}
