import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lingo/Core/Dto/Models/Order.dart';

part 'OrderHistoryResponse.freezed.dart';
part 'OrderHistoryResponse.g.dart';

@freezed
class OrderHistoryResponse with _$OrderHistoryResponse {
  const factory OrderHistoryResponse({
  List<Order>? data,
  int? pageNumber,
  int? pageSize,
  int? totalRecords,
  bool? hasPreviousPage,
  int? totalPages,
  bool? hasNextPage,
  }) = _OrderHistoryResponse;



  factory OrderHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderHistoryResponseFromJson(json);
}