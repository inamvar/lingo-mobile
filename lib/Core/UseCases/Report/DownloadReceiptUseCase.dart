import 'package:dartz/dartz.dart' hide Order;
import 'package:lingo/Core/Dto/Models/Failure.dart';
import 'package:lingo/Core/Dto/Models/Order.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/Report/DownloadReceiptRequestDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/Repositories/ReportRemoteRepository.dart';
import 'package:lingo/Core/Interfaces/UseCases/Report/IDownloadReceiptUseCase.dart';

class DownloadReceiptUseCase extends IDownloadReceiptUseCase{
  final ReportRemoteRepository repository;

  DownloadReceiptUseCase(this.repository);

  @override
  Future<Either<Failure, void>> execute({DownloadReceiptRequestDtoUseCase? params}) async {
    return await repository.downloadTransactionReceipt(params!);
  }


}