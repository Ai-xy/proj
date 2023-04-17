import 'package:json_annotation/json_annotation.dart';
part 'User.g.dart';

@JsonSerializable()
class User {
  int? userId;
  dynamic? nickname;
  dynamic? gender;
  dynamic? birthday;
  dynamic? age;
  dynamic? countryId;
  dynamic? level;
  int? friendNum;
  int? fansNum;
  int? upsNum;
  dynamic? videoPrice;
  dynamic? icon;
  int? diamondNum;
  dynamic? userType;
  int? valid;
  dynamic? userTagType;
  int? disturbStatus;
  String? token;
  dynamic? yxAccid;
  dynamic? imToken;
  dynamic? vip;
  bool? isFirstCharge;
  bool? canGetDiamond;
  dynamic? anchorIncomeMap;
  String? storeUrl;
  dynamic? vipExpireMs;
  bool? onReview;
  bool? xNew;

  User();
  factory User.fromJson(Map<String, dynamic> json) => $UserFromJson(json);



  Map<String, dynamic> toJson() => $UserToJson(this);
}
