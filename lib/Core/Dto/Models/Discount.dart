import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lingo/Core/Dto/Models/Pricing.dart';

part 'Discount.freezed.dart';
part 'Discount.g.dart';

@freezed
class Discount with _$Discount {
  const factory Discount({
    int? discountValue,
    List<Pricing>? finalAmounts,
  }) = _Discount;

  factory Discount.fromJson(Map<String, dynamic> json) => _$DiscountFromJson(json);
}
