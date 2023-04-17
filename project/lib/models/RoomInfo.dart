class RoomInfo {
  String? code;
  String? message;
  Result? result;

  RoomInfo({this.code, this.message, this.result});

  RoomInfo.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    result =
    json['result'] != null ? new Result.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class Result {
  int? id;
  String? roomName;
  String? roomCode;
  String? yxRoomId;
  String? password;
  int? charismaShow;
  String? backgroundImg;
  String? lockFlag;
  Null roomLabel;
  String? homeownerNickname;
  String? homeownerIcon;
  List<VoiceMikeDetailVoList>? voiceMikeDetailVoList;
  String? agoraToken;
  int? homeownerId;
  int? relationType;
  String? coverImg;
  int? roomState;
  int? valid;
  Null? charisma;

  Result(
      {this.id,
        this.roomName,
        this.roomCode,
        this.yxRoomId,
        this.password,
        this.charismaShow,
        this.backgroundImg,
        this.lockFlag,
        this.roomLabel,
        this.homeownerNickname,
        this.homeownerIcon,
        this.voiceMikeDetailVoList,
        this.agoraToken,
        this.homeownerId,
        this.relationType,
        this.coverImg,
        this.roomState,
        this.valid,
        this.charisma});

  Result.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roomName = json['roomName'];
    roomCode = json['roomCode'];
    yxRoomId = json['yxRoomId'];
    password = json['password'];
    charismaShow = json['charismaShow'];
    backgroundImg = json['backgroundImg'];
    lockFlag = json['lockFlag'];
    roomLabel = json['roomLabel'];
    homeownerNickname = json['homeownerNickname'];
    homeownerIcon = json['homeownerIcon'];
    if (json['voiceMikeDetailVoList'] != null) {
      voiceMikeDetailVoList = <VoiceMikeDetailVoList>[];
      json['voiceMikeDetailVoList'].forEach((v) {
        voiceMikeDetailVoList!.add(new VoiceMikeDetailVoList.fromJson(v));
      });
    }
    agoraToken = json['agoraToken'];
    homeownerId = json['homeownerId'];
    relationType = json['relationType'];
    coverImg = json['coverImg'];
    roomState = json['roomState'];
    valid = json['valid'];
    charisma = json['charisma'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['roomName'] = this.roomName;
    data['roomCode'] = this.roomCode;
    data['yxRoomId'] = this.yxRoomId;
    data['password'] = this.password;
    data['charismaShow'] = this.charismaShow;
    data['backgroundImg'] = this.backgroundImg;
    data['lockFlag'] = this.lockFlag;
    data['roomLabel'] = this.roomLabel;
    data['homeownerNickname'] = this.homeownerNickname;
    data['homeownerIcon'] = this.homeownerIcon;
    if (this.voiceMikeDetailVoList != null) {
      data['voiceMikeDetailVoList'] =
          this.voiceMikeDetailVoList!.map((v) => v.toJson()).toList();
    }
    data['agoraToken'] = this.agoraToken;
    data['homeownerId'] = this.homeownerId;
    data['relationType'] = this.relationType;
    data['coverImg'] = this.coverImg;
    data['roomState'] = this.roomState;
    data['valid'] = this.valid;
    data['charisma'] = this.charisma;
    return data;
  }
}

class VoiceMikeDetailVoList {
  int? mikeIndex;
  int? userId;
  String? icon;
  String? yxAccid;
  Null? charisma;
  String? nickname;
  int? lockFlag;
  String? identityType;

  VoiceMikeDetailVoList(
      {this.mikeIndex,
        this.userId,
        this.icon,
        this.yxAccid,
        this.charisma,
        this.nickname,
        this.lockFlag,
        this.identityType});

  VoiceMikeDetailVoList.fromJson(Map<String, dynamic> json) {
    mikeIndex = json['mikeIndex'];
    userId = json['userId'];
    icon = json['icon'];
    yxAccid = json['yxAccid'];
    charisma = json['charisma'];
    nickname = json['nickname'];
    lockFlag = json['lockFlag'];
    identityType = json['identityType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mikeIndex'] = this.mikeIndex;
    data['userId'] = this.userId;
    data['icon'] = this.icon;
    data['yxAccid'] = this.yxAccid;
    data['charisma'] = this.charisma;
    data['nickname'] = this.nickname;
    data['lockFlag'] = this.lockFlag;
    data['identityType'] = this.identityType;
    return data;
  }
}