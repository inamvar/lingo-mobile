import 'package:freezed_annotation/freezed_annotation.dart';

part 'Pricing.freezed.dart';
part 'Pricing.g.dart';

@freezed
class Pricing with _$Pricing {
  const factory Pricing({
    String? currencyType,
    int? amount,
  }) = _Pricing;

  factory Pricing.fromJson(Map<String, dynamic> json) => _$PricingFromJson(json);
}
