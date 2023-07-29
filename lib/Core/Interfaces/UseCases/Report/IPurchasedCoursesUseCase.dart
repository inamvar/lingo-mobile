import 'package:lingo/Core/Dto/Models/BaseNetworkResponse.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/PaginationRequestDtoUseCase.dart';
import 'package:lingo/Core/Dto/UseCases/Responses/Report/PurchasedCoursesResponse.dart';
import 'package:lingo/Core/Interfaces/UseCases/IUseCase.dart';

abstract class IPurchasedCoursesUseCase extends IUseCase<
    BaseNetworkResponse<PurchasedCoursesResponse>,
    PaginationRequestDtoUseCase> {}
