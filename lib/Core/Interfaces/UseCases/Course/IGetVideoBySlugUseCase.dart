import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/Models/Video.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class IGetVideoBySlugUseCase
    extends IUseCase<BaseNetworkResponse<Video>, String> {}
