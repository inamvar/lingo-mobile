import 'package:json_annotation/json_annotation.dart';

part 'User.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class User {
  User({this.firstName, this.lastName, this.email, this.phoneNumber});

  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phoneNumber;


  factory User.fromJson(Map<String, dynamic> json) {
    return _$UserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserToJson(this);
}