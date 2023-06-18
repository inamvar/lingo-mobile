import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

import '../../../Dto/Models/Course.dart';

abstract class IGetCourseByIdUseCase
    implements IUseCase<BaseNetworkResponse<Course>, String> {}
