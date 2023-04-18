import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nim_core/nim_core.dart';
import 'package:project/common/Config.dart';
import 'package:project/common/sdkconfig.dart';
import 'package:project/models/User.dart';
import 'package:sp_util/sp_util.dart';

class YxService {
  YxService._internal();

  factory YxService() => _instance;

  static late final YxService _instance = YxService._internal();

  final subscriptions = <StreamSubscription>[];

  /// 初始化SDK
  initYx(User user) async {
    /// 注册登录状态监听
    subscriptions
        .add(NimCore.instance.authService.authStatus.listen((event) {

    }));

    /// 接收方注册消息接收事件流（onMessage），监听消息接收。
    subscriptions.add(NimCore.instance.messageService.onMessage
        .listen((List<NIMMessage> list) {
      Fluttertoast.showToast(
          msg: list.first.content.toString(), toastLength: Toast.LENGTH_LONG);
    }));

    /// 多媒体状态监听
    /// 发送方监听
    /// onMessageStatus(监听消息附件上传/下载进度)
    /// 和
    /// onAttachmentProgress(监听消息附件上传/下载进度)
    subscriptions.add(NimCore.instance.messageService.onMessageStatus
        .listen((NIMMessage message) {}));

    subscriptions.add(NimCore.instance.messageService.onAttachmentProgress
        .listen((NIMAttachmentProgress process) {
      // todo 根据附件下载/上传进度更新UI
    }));

    // 初始化sdk
    var options = await NIMSDKOptionsConfig.getSDKOptions(Config.appKey);
    NimCore.instance.initialize(options!).then((result) async {
      if (result.isSuccess) {
        // 初始化成功
        print("sdk初始化成功:result");
        print(result);
        // print('用户信息: yxAccid' + user.yxAccid);
        // print('imToken' + user.imToken);
        login(user);
      } else {
        // 初始化失败
        print("sdk初始化失败");
      }
    }).catchError((e) {
      print('im init failed with error ${e.toString()}');
    });
  }

  /// 登录IM服务
  login(User user) async {
    print('登录IM服务');
    // print('用户信息: yxAccid' + user.yxAccid);
    // print('imToken' + user.imToken);
    NimCore.instance.authService
        .login(NIMLoginInfo(
      account: user.yxAccid,
      token: user.imToken,
    ))
        .then((result) {
      if (result.isSuccess) {
        // 登录成功
        print("IM登录成功");
        Fluttertoast.showToast(msg: "登录成功");
        SpUtil.putObject(Config.userInfo, user);
      } else {
        // 登录失败
        print("IM登录失败");
        Fluttertoast.showToast(msg: "登录失败");
      }
    }).catchError((e) {
      print('im login failed with error ${e.toString()}');
    });
  }

  /// 登出IM服务
  void logout() {
    NimCore.instance.authService.logout().then((result) {
      if (result.isSuccess) {
        /// 成功
        print("登出成功");
        Fluttertoast.showToast(msg: "logout success");
      } else {
        /// 失败
        print("登出失败");
        Fluttertoast.showToast(msg: "logout fail");
      }
    });
  }

  /// 发送文本消息
  Future<NIMMessage> sendTextMessage(NIMMessage data) async {
    return NimCore.instance.messageService
        .sendMessage(message: data)
        .then((value) {
      print(value);
      if (value.isSuccess) {
        print('发送消息成功');
        return value.data!;
      } else {
        Fluttertoast.showToast(msg: value.errorDetails!);
        print('发送消息失败');
        return Future.value(value.data);
      }
    });
  }

  /// 获取最近会话
  getRecentReSessions() async {
    NIMResult<List<NIMSession>> sessionResult =
        await NimCore.instance.messageService.querySessionList();
    return sessionResult;
  }

  /// 过滤对话类型接口
  getRecentReSessionsCustomization() async {
    NIMResult<List<NIMSession>> result = await NimCore.instance.messageService
        .querySessionListFiltered([NIMMessageType.text, NIMMessageType.image]);
    return result;
  }

  /// 创建一个空的会话
  createNewSession(String sessionId) async {
    NIMSessionType sessionType = NIMSessionType.p2p;
    NIMResult<NIMSession> session = await NimCore.instance.messageService
        .createSession(
            sessionId: sessionId, sessionType: sessionType, time: 1000);
    return session;
  }

  /// 更新会话对象
  updateSession(NIMSession session) async {
    NimCore.instance.messageService.updateSession(session: session);
  }

  /// 获取未读数
  getUnreadCount() async {
    NIMResult<int> result =
        await NimCore.instance.messageService.queryTotalUnreadCount();
    return result;
  }

  /// 清空指定会话未读数
  clearSessionUnreadCount(NIMSessionInfo sessionInfo) async {
    await NimCore.instance.messageService
        .clearSessionUnreadCount([sessionInfo]);
  }

  /// 清空所有会话的未读计数
  clearAllSessionUnreadCount() async {
    NIMResult<void> result =
        await NimCore.instance.messageService.clearAllSessionUnreadCount();
    return result;
  }

  /// 删除最近会话
  /// 调用该接口后，会触发[MessageService.onSessionDelete]通知
  /// [deleteType] 删除类型，决定是否删除本地记录和漫游记录
  /// [sendAck] 如果参数合法，是否向其他端标记此会话为已读
  deleteSession(
      {required NIMSessionInfo sessionInfo,
      required NIMSessionDeleteType deleteType,
      required bool sendAck}) async {
    NIMResult<void> result = await NimCore.instance.messageService
        .deleteSession(
            sessionInfo: sessionInfo, deleteType: deleteType, sendAck: sendAck);
    return result;
  }

  /// 聊天室
  /// 登录 IM 状态进入聊天室（非独立模式）
  Future<NIMResult<NIMChatroomEnterResult>> chatRoomEnter(
      String roomId, String nickName) async {
    return NimCore.instance.chatroomService.enterChatroom(
      NIMChatroomEnterRequest(
        roomId: roomId,
        nickname: nickName,
        retryCount: 2,
      ),
    );
  }

  /// 匿名状态进入聊天室（独立模式）
  Future<void> chatRoomEnterAnonymity(
      String roomId, String nickName, String avatar) async {
    NimCore.instance.chatroomService.enterChatroom(
      NIMChatroomEnterRequest(
        roomId: roomId,
        nickname: nickName,
        avatar: avatar,
        retryCount: 3,
        independentModeConfig: NIMChatroomIndependentModeConfig(
          appKey: 'independent_mode_appkey',
          account: '',
          token: '',
        ),
      ),
    );
  }

  /// 监听聊天室连接变化
  chatRoomListen() {
    final subscription =
        NimCore.instance.chatroomService.onEventNotified.listen((event) {
      if (event is NIMChatroomStatusEvent) {
        /// 连接状态事件通知
      } else if (event is NIMChatroomKickOutEvent) {
        /// 离开事件通知
      }
    });

    /// 不再使用时，需要取消监听
    /// subscription.cancel();
  }

  /// 退出聊天室
  exitChatroom(String roomId) async {
    await NimCore.instance.chatroomService.exitChatroom(roomId);
  }

  /// 发送聊天室消息(类型自定义)
  sendChatRoomMessage(NIMChatroomMessage message) async {
    await NimCore.instance.chatroomService.sendChatroomMessage(message);
  }

  /// eg.发送聊天室文本消息
  sendChatRoomTextMessage(String roomId, String text) async {
    ChatroomMessageBuilder.createChatroomTextMessage(
      roomId: roomId,
      text: text,
    ).then<NIMResult>((result) {
      if (result.isSuccess) {
        print('消息发送成功!!!');
        return NimCore.instance.chatroomService
            .sendChatroomMessage(result.data!);
      } else {
        return result;
      }
    }).then((value) {
      print(
          'ChatroomService##send message: ${value.code} ${value.errorDetails}');
    });
  }

  /// 在合适的位置进行接受消息监听设置
  setMessageReceiveListen() {
    final subsription =
        NimCore.instance.chatroomService.onMessageReceived.listen((messages) {
      messages.forEach((message) {
        print(
            'ChatroomService##on message received: ${message.fromAccount} ${message.fromNickname} '
            '\'${message.content}\'');
      });
    });

    /// 不再监听时需要移除监听器
    /// subscription.cancel();
    /// 注：
    /// 附件的下载，请使用ChatroomService的downloadAttachment方法进行下载。
    /// 监听消息状态变化，请使用ChatroomService的onMessageStatusChanged事件流。
    /// 监听消息附件上传/下载进度事件，请使用ChatroomService的onMessageAttachmentProgressUpdate。
  }

  /// 查询聊天室消息
  /// 调用后使用then接收回调参数
  /// 查询方向 QueryDirection.QUERY_OLD,
  /// 查询类型: eg. NIMMessageType.text
  Future<void> fetchMessageHistory(
      String roomId, List<NIMMessageType>? list) async {
    NimCore.instance.chatroomService.fetchMessageHistory(
      roomId: roomId,
      startTime: DateTime.now().millisecondsSinceEpoch,
      limit: 10,
      direction: QueryDirection.QUERY_OLD,
      messageTypeList: list,
    );
  }

  /// 获取聊天室信息
  Future<void> getChatRoomInfo(String roomId) async {
    NimCore.instance.chatroomService.fetchChatroomInfo(roomId);
  }

  /// 修改聊天室信息
  Future<void> alterChatRoomInfo(String roomId) async {
    NimCore.instance.chatroomService.updateChatroomInfo(
      roomId: roomId,
      request: NIMChatroomUpdateRequest(
        announcement: '修改群公告',
      ),
      needNotify: true,
    );
  }

  /// 分页获取聊天室成员
  Future<void> getChatRoomMembers(String roomId) async {
    NimCore.instance.chatroomService.fetchChatroomMembers(
      roomId: roomId,
      queryType: NIMChatroomMemberQueryType.allNormalMember,
      limit: 10,
    );
  }

  /// 获取指定聊天室成员
  /// [accountList]成员账号列表
  Future<void> getChatroomMembersByAccount(
      String roomId, List<String> accountList) async {
    NimCore.instance.chatroomService.fetchChatroomMembersByAccount(
      roomId: roomId,
      accountList: accountList,
    );
  }

  /// 修改自身信息
  Future<void> updateChatroomMyMemberInfo(
      String roomId, NIMChatroomUpdateMyMemberInfoRequest memberInfo) async {
    NimCore.instance.chatroomService
        .updateChatroomMyMemberInfo(roomId: roomId, request: memberInfo);
  }

  /// 添加/移除管理员
  /// true 设置，false 取消
  Future<void> markChatroomMemberBeManager(
      bool isAdd, NIMChatroomMemberOptions options) async {
    NimCore.instance.chatroomService
        .markChatroomMemberBeManager(isAdd: isAdd, options: options);
  }

  /// 添加/移除普通成员
  /// true 设置，false 取消
  Future<void> markChatroomMemberBeNormal(
      bool isAdd, NIMChatroomMemberOptions options) async {
    NimCore.instance.chatroomService.markChatroomMemberBeNormal(
      isAdd: isAdd,
      options: options,
    );
  }

  /// 添加/移出聊天室黑名单
  Future<void> markChatroomMemberInBlackList(
      bool isAdd, NIMChatroomMemberOptions options) async {
    NimCore.instance.chatroomService.markChatroomMemberInBlackList(
      isAdd: isAdd,
      options: options,
    );
  }

  /// 添加/移除禁言用户
  Future<void> markChatroomMemberMuted(
      bool isAdd, NIMChatroomMemberOptions options) async {
    NimCore.instance.chatroomService.markChatroomMemberMuted(
      isAdd: isAdd,
      options: options,
    );
  }

  /// 踢出成员
  Future<void> kickChatroomMember(
      bool isAdd, NIMChatroomMemberOptions options) async {
    NimCore.instance.chatroomService.kickChatroomMember(options);
  }

  /// 临时禁言成员
  /// - [duration]     禁言时长，单位ms。设置为 0 会取消禁言
  /// - [options] 请求参数，包含聊天室id，帐号id以及可选的扩展字段
  /// - [needNotify]   是否需要发送广播通知，true：通知，false：不通知
  Future<void> markChatroomMemberTempMuted(
      int duration, NIMChatroomMemberOptions options, bool needNotify) async {
    NimCore.instance.chatroomService.markChatroomMemberTempMuted(
      duration: duration,
      options: options,
      needNotify: needNotify,
    );
  }

  /// 获取聊天室队列
  /// [roomId] 聊天室ID <p>
  Future<void> fetchChatroomQueue(String roomId) async {
    NimCore.instance.chatroomService.fetchChatroomQueue(roomId);
  }

  /// 加入或者更新队列元素
  Future<void> updateChatroomQueueEntry(
      String roomId, NIMChatroomQueueEntry entry) async {
    NimCore.instance.chatroomService
        .updateChatroomQueueEntry(roomId: roomId, entry: entry);
  }

  /// 批量更新队列元素
  Future<void> batchUpdateChatroomQueue(
      String roomId, List<NIMChatroomQueueEntry> list) async {
    NimCore.instance.chatroomService
        .batchUpdateChatroomQueue(roomId: roomId, entryList: list);
  }

  /// 移除指定队列元素
  Future<void> pollChatroomQueueEntry(String roomId, String key) async {
    NimCore.instance.chatroomService.pollChatroomQueueEntry(
      roomId,
      key,
    );
  }

  /// 清空队列
  Future<void> clearChatroomQueue(String roomId) async {
    NimCore.instance.chatroomService.clearChatroomQueue(
      roomId,
    );
  }
}
