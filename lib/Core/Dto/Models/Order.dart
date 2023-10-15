import 'package:json_annotation/json_annotation.dart';

part 'Order.g.dart';

@JsonSerializable()
class Order {
  Order();

  String? courseName;
  String? orderDate;
  double? price;
  double? discount;
  double? finalPrice;
  int? courseId;
  int? orderId;
  String? courseSlug;
  String? pdfReportLink;
  @JsonKey(includeToJson: false,includeFromJson: false)
  bool isExist = false;
  @JsonKey(includeToJson: false,includeFromJson: false)
  bool isDownloading = false;
  @JsonKey(includeToJson: false,includeFromJson: false)
  double downloadPercent = 0.1;

  factory Order.fromJson(Map<String, dynamic> json) {
    return _$OrderFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
