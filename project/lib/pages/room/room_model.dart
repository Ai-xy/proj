import 'dart:async';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nim_core/nim_core.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:project/apis/device.dart';
import 'package:project/apis/room.dart';
import 'package:project/common/Config.dart';
import 'package:project/common/http_utils.dart';
import 'package:project/common/yx.dart';
import 'package:project/models/Room.dart';
import 'package:project/models/RoomInfo.dart';
import 'package:project/models/User.dart';
import 'package:sp_util/sp_util.dart';
import '/components/functions_widget.dart';
import '/components/input_chat_widget.dart';
import '/components/room_leave_widget.dart';
import '/components/room_lock_mic_widget.dart';
import '/components/room_send_gift_widget.dart';
import '/components/room_tap_head_detail_widget.dart';
import '/components/room_unlock_mic_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RoomModel extends FlutterFlowModel {
  /// Initialization and disposal methods.
  Map<String, dynamic>? params;
  User? user;
  RoomResult? roomResult;
  String? yxRoomId;
  String? SwRoomId;
  String? Function(BuildContext, String?)? textControllerValidator;
  // 直播间人数
  int memberNum = 0;
  // 用户麦位 1~8
  int? micIndex;
  // 是否有新用户进入房间
  bool isNewMember = false;
  // 聊天室成员列表
  List<NIMChatroomMember> chatroomMemberList = [];
  // 新加入聊天室成员消息列表
  List<String?> memberList = [];
  // 消息列表
  List<NIMChatroomMessage> messageList = <NIMChatroomMessage>[];
  // 麦上用户列表
  List<VoiceMikeDetailVoList>? voiceMikeDetailVoList = [];
  // 消息列表长度
  int messageListLong = 0;

  TextEditingController? textController = TextEditingController();
  ScrollController messageListScrollController = ScrollController();

  ///直播间关注数量
  StreamSubscription<List<NIMChatroomMessage>>? _messageReceivedSubscription;
  StreamSubscription<NIMChatroomEvent>? _eventNotifySubscription;

  /// 声网相关
  late RtcEngine _engine;
  int? _remoteUid;

  // 判断当前用户是否上麦成功
  bool localUserJoined = false;
  // 判断当前用户是否加入声网频道
  bool localUserInAgora = false;
  // 是否收到了礼物，有则显示侧边礼物栏
  bool isGift = false;

  Result? apiResult;

  List isMicBeingOccupied = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  void initState(BuildContext context) {
    // 初始化声网SDK
    initAgora();
  }

  void dispose() {
    textController?.dispose();
    messageListScrollController.dispose();
    localUserJoined = false;
    if (micIndex != null) {
      userDownMike(micIndex!);
    }
    print('dispose');
    levelAgoraRoom();
  }

  // 进入房间
  enterChatroom(BuildContext context) {
    //queryRoomByCode();
    joinRoom();
  }

  // 根据房间code查询房间
  queryRoomByCode() {
    HttpUtils.post(
        ApisRoom.queryRoomByCode, {"searchValue": roomResult!.roomCode},
        success: (data) {
      print("房间code查询房间: $data");
    }, fail: (data) {});
  }

  // 调用服务器api
  joinRoom() async {
    user = SpUtil.getObj<User>(
        Config.userInfo, (v) => User.fromJson(v as Map<String, dynamic>));
    HttpUtils.post(ApisRoom.joinRoom, {"id": roomResult!.id, "password": ''},
        success: (data) async {
      apiResult = Result.fromJson(data);
      Fluttertoast.showToast(msg: "进入房间成功!");
      // print('进入房间成功');
      // print(apiResult);
      // print("云信yxRoomId" + apiResult!.yxRoomId!);
      yxRoomId = apiResult!.yxRoomId.toString();
      // print("声网Token" + apiResult!.agoraToken.toString());
      voiceMikeDetailVoList = apiResult?.voiceMikeDetailVoList;

      checkMike();
      await _fetchMessageHistory();
      await joinRoomSuccess(roomResult!.id.toString());
      _listenLiveRoomState();
      await _yxEnterRoom(apiResult!, user!);
      queryRoomByCode();
    }, fail: (data) {
      Fluttertoast.showToast(msg: "进入房间失败!");
    });
  }

  // 进入房间成功
  joinRoomSuccess(String roomId) {
    HttpUtils.post(ApisRoom.joinRoomSuccess, {"searchValue": roomId},
        success: (data) async {
      print('joinRoomSuccess: ');
      print(data);
    }, fail: (data) {
      print('joinRoomFailed: ');
      print(data);
    });
  }

  // 进入云信聊天室
  _yxEnterRoom(Result result, User user) async {
    await YxService()
        .chatRoomEnter(result.yxRoomId.toString(), user.nickname)
        .then((value) {
      print(value);
      if (value.isSuccess) {
        print("_yxEnterRoom");
        print(value);
        NIMResult<NIMChatroomEnterResult> result = value;
        print(result.data!.member.nickname);

        /// 加入聊天室成功
        print("加入聊天室成功");
      } else {
        /// 加入聊天室失败
        print("加入聊天室失败");
      }
    });
  }

  // 监听聊天室状态
  void _listenLiveRoomState() {
    _eventNotifySubscription = NimCore.instance.chatroomService.onEventNotified
        .listen(_onEventNotified);
    _messageReceivedSubscription = NimCore
        .instance.chatroomService.onMessageReceived
        .listen(_onMessageReceived);
  }

  void _onEventNotified(NIMChatroomEvent event) {
    print('直播间状态变化$event');
  }

  // 获取历史消息
  Future _fetchMessageHistory() {
    return NimCore.instance.chatroomService
        .fetchMessageHistory(
            roomId: yxRoomId!,
            startTime: DateTime.now().millisecond,
            limit: 99,
            direction: QueryDirection.QUERY_OLD)
        .then((value) {
      if (value.data is List<NIMChatroomMessage>) {
        print('获取到历史消息');
        messageList.addAll(value.data as List<NIMChatroomMessage>);
        messageListLong = messageList.length;
        print("$messageListLong");
      }
    });
  }

  // 接收消息
  void _onMessageReceived(List<NIMChatroomMessage> event) {
    for (NIMChatroomMessage item in event) {
      print('收到消息${item.toMap()}');
      NIMChatroomMessage mItem = item;

      if (item.messageAttachment is NIMChatroomMemberInAttachment ||
          item.messageAttachment is NIMChatroomNotificationAttachment) {
        _refreshRoomInfo();
      }
      if (item.messageType == NIMMessageType.text &&
          (item.content != null || item.content?.isEmpty != true)) {
        _addMessage(item);
      }
      // 麦位刷新
      for (int i = 0; i < mItem.remoteExtension!['data'].length; i++) {
        // 已有人的麦位
        if (mItem.remoteExtension!['data'][i].containsKey('userId') &&
            mItem.remoteExtension!['data'][i]['mikeIndex'] != -1) {
          final mikeIndex = mItem.remoteExtension!['data'][i]['mikeIndex'];
          voiceMikeDetailVoList![mikeIndex - 1] = VoiceMikeDetailVoList(
              mikeIndex: mikeIndex,
              userId: mItem.remoteExtension!['data'][i]['userId'],
              icon: mItem.remoteExtension!['data'][i]['icon'],
              nickname: mItem.remoteExtension!['data'][i]['nickname']);
          isMicBeingOccupied[mikeIndex! - 1] = true;
          onUpdate();
          print('麦位状态$mikeIndex');
        }
        // 空闲麦位
        else {
          if (mItem.remoteExtension!['data'][i]['mikeIndex'] != -1) {
            final mikeIndex = mItem.remoteExtension!['data'][i]['mikeIndex'];
            isMicBeingOccupied[mikeIndex! - 1] = false;
          }
        }
        onUpdate();
      }
    }
  }

  // 发送消息
  sendMessage(BuildContext context) async {
    if (textController.text != '') {
      sendChatRoomTextMessage(text: textController.text, roomId: yxRoomId!)
          .then((value) {
        if (value == null) {
          return;
        }
        _addMessage(value);
        textController!.clear();
        Navigator.pop(context);
      });
    }
  }

  Future<NIMChatroomMessage?> sendChatRoomTextMessage(
      {required String text, required String roomId}) {
    return ChatroomMessageBuilder.createChatroomTextMessage(
      roomId: roomId,
      text: text,
    ).catchError((err, s) {
      print('创建text信息失败' + err + s);
      throw err;
    }).then<NIMResult>((result) {
      if (result.isSuccess == false || result.data == null) {
        throw '发送数据失败';
      }
      return NimCore.instance.chatroomService.sendChatroomMessage(result.data!);
    }).then((value) {
      print('发送text信息:$text结果 $value');
      if (value.data is NIMChatroomMessage) {
        print(value.data);
        return value.data as NIMChatroomMessage;
      }
      return null;
    }).catchError((err, s) {
      print('发送text信息失败' + err + s);
      throw err;
    });
  }

  Future _refreshRoomInfo() {
    chatroomMemberList = [];
    return NimCore.instance.chatroomService
        .fetchChatroomInfo(yxRoomId!)
        .then((value) {
      memberNum = value.data?.onlineUserCount ?? 1;
      print('聊天室信息${value.toMap()} 当前在线数量${value.data?.onlineUserCount}');
    }).then((value) {
      return NimCore.instance.chatroomService
          .fetchChatroomMembers(
              roomId: yxRoomId!,
              queryType:
                  NIMChatroomMemberQueryType.onlineGuestMemberByEnterTimeAsc,
              limit: 3)
          .then((value) {
        chatroomMemberList = value.data ?? [];
        for (NIMChatroomMember item in chatroomMemberList) {
          print('直播间成员${item.nickname}');
          _addSystemMessage(item.nickname);
        }
        onUpdate();
      }).then((value) {
        print('查询聊天室队列');
        NimCore.instance.chatroomService
            .fetchChatroomQueue(yxRoomId!)
            .then((value) {
          print(value);
        });
      });
    });
  }

  void _addMessage(NIMChatroomMessage message) {
    messageList.add(message);
    toBottom();
  }

  // 显示系统消息
  void _addSystemMessage(String? nickName) {
    if (nickName != null) {
      isNewMember = true;
      memberList.add(nickName);
    }
  }

  // 滑动至底部
  toBottom() {
    Future.delayed(const Duration(milliseconds: 20), () {
      messageListScrollController.animateTo(
          messageListScrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 10),
          curve: Curves.linearToEaseOut);
    });
    onUpdate();
  }

  // 声网初始化应用
  Future<void> initAgora() async {
    // 获取权限
    await [Permission.microphone].request();

    // 创建 RtcEngine
    _engine = await createAgoraRtcEngine();

    // 初始化 RtcEngine，设置频道场景为直播场景
    await _engine.initialize(const RtcEngineContext(
      appId: Config.swAppId,
      channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
    ));

    // 监听事件
    _engine.registerEventHandler(
      RtcEngineEventHandler(
        onError: (ErrorCodeType err, String msg) {
          Fluttertoast.showToast(msg: "加入频道失败");
          // print('加入频道失败');
          // print(err);
          // print(msg);
        },
        onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
          print('加入频道成功');
          Fluttertoast.showToast(msg: "加入频道成功！");
          localUserInAgora = true;
          debugPrint("local user ${connection.localUid} joined");
          onUpdate();
        },
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
          debugPrint("remote user $remoteUid joined");
          print("remote user $remoteUid joined");
          _remoteUid = remoteUid;
          //checkRemoteUserMikeIsOn(remoteUid);
          onUpdate();
        },
        //其他用户离开了频道
        onUserOffline: (RtcConnection connection, int remoteUid,
            UserOfflineReasonType reason) {
          debugPrint("remote user $remoteUid left channel");
          _remoteUid = remoteUid;
          // checkRemoteUserMikeIsDown(remoteUid);
          onUpdate();
        },
        onConnectionStateChanged: (RtcConnection connection,
            ConnectionStateType state, ConnectionChangedReasonType reason) {},
      ),
    );

    print("apiResult!.id: " + apiResult!.id.toString());
    print("apiResult!.agoraToken: " + apiResult!.agoraToken.toString());

    // 作为主播加入声网频道
    await enterAgoraRoom();
  }

  // 检查麦上的用户是否上麦
  checkRemoteUserMikeIsOn(int userId) {
    for (VoiceMikeDetailVoList item in voiceMikeDetailVoList!) {
      if (item.userId == userId) {}
    }
  }

  // 检查麦上的用户是否下麦
  checkRemoteUserMikeIsDown(int userId) {
    for (VoiceMikeDetailVoList item in voiceMikeDetailVoList!) {
      print("item.userId: ${item.userId}    userId: $userId");
      if (item.userId == userId) {
        isMicBeingOccupied[item.mikeIndex! - 1] = false;
        onUpdate();
      }
    }
  }

  // 以主播身份进入声网频道
  enterAgoraRoom() async {
    await _engine
        .joinChannel(
      channelId: apiResult!.id.toString(),
      token: apiResult!.agoraToken.toString(),
      options: const ChannelMediaOptions(
          clientRoleType: ClientRoleType.clientRoleBroadcaster),
      uid: user!.userId!,
    )
        .then((value) async {
      await _engine
          .setClientRole(role: ClientRoleType.clientRoleAudience)
          .then((value) {});
    });
  }

  // 以观众身份进入频道
  enterAgoraRoomWithClient() async {
    _engine
        .joinChannel(
          channelId: apiResult!.id.toString(),
          token: apiResult!.agoraToken.toString(),
          options: const ChannelMediaOptions(
              clientRoleType: ClientRoleType.clientRoleAudience),
          uid: user!.userId!,
        )
        .then((value) {});
  }

  /// 改变声网角色
  /// 1主播，2观众
  Future changeRoleType(int flag, int index) async {
    micIndex = index;
    if (flag == 1) {
      await _engine
          .setClientRole(role: ClientRoleType.clientRoleBroadcaster)
          .then((value) {
        isMicBeingOccupied[micIndex! - 1] = true;
        onUpdate();
        Fluttertoast.showToast(msg: '身份切换');
      });
    } else {
      // 切换到旁听状态
      await _engine
          .setClientRole(role: ClientRoleType.clientRoleAudience)
          .then((value) {
        isMicBeingOccupied[micIndex! - 1] = true;
        onUpdate();
        Fluttertoast.showToast(msg: '身份切换');
      });
    }
  }

  // 检查是否能够上麦
  bool checkMike() {
    // 将已上麦的用户麦位设置状态
    print('voiceMikeDetailVoList长度为${voiceMikeDetailVoList?.length}');
    for (int i = 0; i < voiceMikeDetailVoList!.length; i++) {
      print(voiceMikeDetailVoList![i].toJson());
      int j = voiceMikeDetailVoList![i].mikeIndex!;
      // 除房主外
      if (j != -1 && voiceMikeDetailVoList![i].userId != null) {
        isMicBeingOccupied[voiceMikeDetailVoList![i].mikeIndex! - 1] = true;
        onUpdate();
      }
    }
    onUpdate();
    return true;
  }

  // 退出声网频道
  levelAgoraRoom() {
    Fluttertoast.showToast(msg: '您已退出声网频道');
    _engine.leaveChannel();
    _engine.release();
  }

  // 用户上麦
  userOnMike(BuildContext context, int index) {
    print('mikeIndex: $index');
    print('roomId: ${roomResult!.id.toString()}');
    HttpUtils.post(ApisRoom.onMike, {
      "mikeIndex": index,
      "roomId": roomResult!.id.toString()
    }, success: (data) async {
      print("userOnMike Success: ");
      print(data);
      await changeRoleType(1, index).then((value) {
        localUserJoined = true;
        onUpdate();
      });
      await mikeHeartbeat(index);
    }, fail: (data) {
      print("userOnMike Fail: ");
      print(data);
    });
  }

  // 保持麦位心跳
  mikeHeartbeat(int index) async {
    HttpUtils.post(ApisRoom.mikeHeartbeat, {
      "mikeIndex": index,
      "roomId": roomResult!.id.toString()
    }, success: (data) {
      print('保持麦位心跳$data');
    }, fail: (data) {});
  }

  // 用户下麦
  userDownMike(int index) {
    HttpUtils.post(ApisRoom.downMike, {
      "mikeIndex": index,
      "roomId": roomResult!.id.toString()
    }, success: (data) async {
      await changeRoleType(2, index).then((value) {
        localUserJoined = false;
        isMicBeingOccupied[index - 1] = false;
        onUpdate();
        print("userDownMike Success: ");
        Fluttertoast.showToast(msg: '您已下麦!');
      });
      print(data);
    }, fail: (data) {
      print("userDownMike Fail: ");
      print(data);
    });
  }

  // 锁定麦位
  lockMike() {
    HttpUtils.post(ApisRoom.lockMike,
        {"mikeIndex": micIndex, "roomId": roomResult!.id.toString()},
        success: (data) {}, fail: (data) {});
  }
}
