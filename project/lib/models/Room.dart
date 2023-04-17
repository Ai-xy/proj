import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Room {
  String? code;
  String? message;
  List<RoomResult>? result;

  Room({this.code, this.message, this.result});

  Room.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['result'] != null) {
      result = <RoomResult>[];
      json['result'].forEach((v) {
        result!.add(new RoomResult.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RoomResult {
  int? id;
  String? roomCode;
  String? roomName;
  String? coverImg;
  int? charisma;
  Null? roomLabel;
  int? lockFlag;
  String? backgroundImg;
  int? charismaShow;
  int? homeownerId;
  String? homeownerCountryId;
  int? voiceChatTagId;

  RoomResult(
      {this.id,
        this.roomCode,
        this.roomName,
        this.coverImg,
        this.charisma,
        this.roomLabel,
        this.lockFlag,
        this.backgroundImg,
        this.charismaShow,
        this.homeownerId,
        this.homeownerCountryId,
        this.voiceChatTagId});

  RoomResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roomCode = json['roomCode'];
    roomName = json['roomName'];
    coverImg = json['coverImg'];
    charisma = json['charisma'];
    roomLabel = json['roomLabel'];
    lockFlag = json['lockFlag'];
    backgroundImg = json['backgroundImg'];
    charismaShow = json['charismaShow'];
    homeownerId = json['homeownerId'];
    homeownerCountryId = json['homeownerCountryId'];
    voiceChatTagId = json['voiceChatTagId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['roomCode'] = this.roomCode;
    data['roomName'] = this.roomName;
    data['coverImg'] = this.coverImg;
    data['charisma'] = this.charisma;
    data['roomLabel'] = this.roomLabel;
    data['lockFlag'] = this.lockFlag;
    data['backgroundImg'] = this.backgroundImg;
    data['charismaShow'] = this.charismaShow;
    data['homeownerId'] = this.homeownerId;
    data['homeownerCountryId'] = this.homeownerCountryId;
    data['voiceChatTagId'] = this.voiceChatTagId;
    return data;
  }
}