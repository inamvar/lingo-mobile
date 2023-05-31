import 'package:freezed_annotation/freezed_annotation.dart';

part 'Discount.freezed.dart';
part 'Discount.g.dart';

@freezed
class Discount with _$Discount {
  const factory Discount({
    int? discountValue,
    List<dynamic>? finalAmounts,
  }) = _Discount;

  factory Discount.fromJson(Map<String, dynamic> json) => _$DiscountFromJson(json);
}
