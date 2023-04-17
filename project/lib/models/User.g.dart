// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'User.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User $UserFromJson(Map<String, dynamic> json) => User()
  ..userId = json['userId'] as int?
  ..nickname = json['nickname']
  ..gender = json['gender']
  ..birthday = json['birthday']
  ..age = json['age']
  ..countryId = json['countryId']
  ..level = json['level']
  ..friendNum = json['friendNum'] as int?
  ..fansNum = json['fansNum'] as int?
  ..upsNum = json['upsNum'] as int?
  ..videoPrice = json['videoPrice']
  ..icon = json['icon']
  ..diamondNum = json['diamondNum'] as int?
  ..userType = json['userType']
  ..valid = json['valid'] as int?
  ..userTagType = json['userTagType']
  ..disturbStatus = json['disturbStatus'] as int?
  ..token = json['token'] as String?
  ..yxAccid = json['yxAccid']
  ..imToken = json['imToken']
  ..vip = json['vip']
  ..isFirstCharge = json['isFirstCharge'] as bool?
  ..canGetDiamond = json['canGetDiamond'] as bool?
  ..anchorIncomeMap = json['anchorIncomeMap']
  ..storeUrl = json['storeUrl'] as String?
  ..vipExpireMs = json['vipExpireMs']
  ..onReview = json['onReview'] as bool?
  ..xNew = json['xNew'] as bool?;

Map<String, dynamic> $UserToJson(User instance) => <String, dynamic>{
      'userId': instance.userId,
      'nickname': instance.nickname,
      'gender': instance.gender,
      'birthday': instance.birthday,
      'age': instance.age,
      'countryId': instance.countryId,
      'level': instance.level,
      'friendNum': instance.friendNum,
      'fansNum': instance.fansNum,
      'upsNum': instance.upsNum,
      'videoPrice': instance.videoPrice,
      'icon': instance.icon,
      'diamondNum': instance.diamondNum,
      'userType': instance.userType,
      'valid': instance.valid,
      'userTagType': instance.userTagType,
      'disturbStatus': instance.disturbStatus,
      'token': instance.token,
      'yxAccid': instance.yxAccid,
      'imToken': instance.imToken,
      'vip': instance.vip,
      'isFirstCharge': instance.isFirstCharge,
      'canGetDiamond': instance.canGetDiamond,
      'anchorIncomeMap': instance.anchorIncomeMap,
      'storeUrl': instance.storeUrl,
      'vipExpireMs': instance.vipExpireMs,
      'onReview': instance.onReview,
      'xNew': instance.xNew,
    };
