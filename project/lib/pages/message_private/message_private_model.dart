import 'dart:async';
import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nim_core/nim_core.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:project/common/Config.dart';
import 'package:project/common/yx.dart';
import 'package:project/kit/mediaKit.dart';
import 'package:project/models/AppUserConversationModel.dart';
import 'package:project/models/RoomInfo.dart';
import 'package:project/models/User.dart';
import 'package:sp_util/sp_util.dart';
import 'package:video_player/video_player.dart';

import '/components/expression_widget.dart';
import '/components/private_report_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MessagePrivateModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  MessagePrivateModel(
      {AppUserConversationModel? conversation,
      VoiceMikeDetailVoList? voiceUser}) {
    this.conversation = conversation;
    this.voiceUser = voiceUser;
  }

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  ScrollController messageListScrollController = ScrollController();

  // 消息列表
  List<NIMMessage> messageList = <NIMMessage>[];

  StreamSubscription<List<NIMMessage>>? _subscription;
  // 会话id
  AppUserConversationModel? conversation;
  VoiceMikeDetailVoList? voiceUser;
  User? user;

  // 语音
  Timer? _timer; // 计时器，用于控制录音时长
  double _voiceTime = 0.0; // 录音时长，单位秒
  bool _isRecording = false; // 是否正在录音中
  String? _voiceFilePath; // 录音文件路径
  int? _voiceFileSize;
  int? _voiceFileDuration;

  void initState(BuildContext context) {
    user = SpUtil.getObj<User>(
        Config.userInfo, (v) => User.fromJson(v as Map<String, dynamic>));

    if (voiceUser != null) {
      createSession();
    }
    //getHistoryData();

    /// 监听消息事件
    _subscription = NimCore.instance.messageService.onMessage.listen((event) {
      _addMessageList(event);
      onUpdate();
    });

    /// 监听语音录制事件
    NimCore.instance.audioService.onAudioRecordStatus
        .listen((RecordInfo recordInfo) {
      print('事件');
      print(recordInfo.filePath);
      print(recordInfo.recordState);
      print(recordInfo.duration);
      print(recordInfo.fileSize);
      print(recordInfo.filePath);
      switch (recordInfo.recordState) {
        case RecordState.SUCCESS:
          print('语音录制成功');
          _voiceFilePath = recordInfo.filePath;
          _voiceFileSize = recordInfo.fileSize;
          _voiceFileDuration = recordInfo.duration;
          sendVoiceMsg();
          break;
        case RecordState.READY:
          // TODO: Handle this case.
          break;
        case RecordState.START:
          // TODO: Handle this case.
          break;
        case RecordState.REACHED_MAX:
          // TODO: Handle this case.
          break;
        case RecordState.FAIL:
          Fluttertoast.showToast(msg: '语音录制失败');
          break;
        case RecordState.CANCEL:
          // TODO: Handle this case.
          break;
      }
    });
  }

  void dispose() {
    textController?.dispose();
    messageListScrollController.dispose();
  }

  // 创建会话
  void createSession() {
    NimCore.instance.messageService
        .createSession(
            sessionId: voiceUser!.yxAccid.toString(),
            sessionType: NIMSessionType.p2p,
            time: DateTime.now().millisecond)
        .then((value) {
      if (value.isSuccess) {
        Fluttertoast.showToast(msg: '创建会话成功');
      }
    });
  }

  // 获取历史消息
  getHistoryData() {
    if (conversation != null) {
      return NimCore.instance.messageService
          .queryLastMessage(conversation!.session.sessionId, NIMSessionType.p2p)
          .then((value) {
        if (value.data is! NIMMessage) return;
        final NIMMessage anchor = value.data as NIMMessage;
        NimCore.instance.messageService
            .queryMessageListEx(anchor, QueryDirection.QUERY_OLD, 10)
            .then((value) {
          if (value.data is List<NIMMessage>) {
            final List<NIMMessage> data = value.data as List<NIMMessage>;
            _addMessageList(data);
            _addMessageList([anchor]);
            print("message长度：${messageList.length}");
            // autoScrollController.scrollToIndex(messageList.length,
            //     preferPosition: AutoScrollPosition.begin);
          }
        });
      });
    }
    if (voiceUser != null) {
      return NimCore.instance.messageService
          .queryLastMessage(voiceUser!.yxAccid.toString(), NIMSessionType.p2p)
          .then((value) {
        if (value.data is! NIMMessage) return;
        final NIMMessage anchor = value.data as NIMMessage;
        NimCore.instance.messageService
            .queryMessageListEx(anchor, QueryDirection.QUERY_OLD, 10)
            .then((value) {
          if (value.data is List<NIMMessage>) {
            final List<NIMMessage> data = value.data as List<NIMMessage>;
            _addMessageList(data);
            _addMessageList([anchor]);
            print("message长度：${messageList.length}");
          }
        });
      });
    }
  }

  // 发送信息
  void sendMsg(BuildContext context) async {
    print('文本信息：${textController.text}');
    String? userid;
    if (textController.text != '') {
      if (conversation != null) {
        print(
            '发送给: nick:${conversation!.nimUser!.nick!} sessionId: ${conversation!.nimUser!.userId!}');
        userid = conversation!.nimUser!.userId!;
      }
      if (voiceUser != null) {
        userid = voiceUser!.yxAccid.toString();
      }
      print('userid是$userid');
      final textMessage = await MessageBuilder.createTextMessage(
        sessionId: userid!,
        sessionType: NIMSessionType.p2p,
        text: textController.text,
      ).then((value) {
        print('创建消息返回: $value');
        YxService().sendTextMessage(value.data!).then((value) {
          textController.text = '';
          print("发送消息返回的数据：${value.toMap()}");
          _addMessage(value);
        });
      });

      //Navigator.pop(context);
    }
  }

  String? getUserId() {
    if (conversation != null) {
      return conversation!.nimUser!.userId!;
    } else if (voiceUser != null) {
      return voiceUser!.yxAccid.toString();
    } else {
      return '';
    }
  }

  // 发送图片信息
  void sendImgMsg() async {
    final XFile? _image =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (_image != null) {
      final int size = await _image.length();
      MessageBuilder.createImageMessage(
        sessionId: getUserId()!,
        sessionType: NIMSessionType.p2p,
        filePath: _image.path,
        fileSize: size,
        displayName: _image.path,
      ).then<NIMResult>((result) {
        if (result.isSuccess) {
          result.data!.config = NIMCustomMessageConfig(enablePush: true);
          return NimCore.instance.messageService
              .sendMessage(message: result.data!);
        } else {
          return result;
        }
      }).then((result) {
        if (result.data != null) {
          _addMessage(result.data);
        }
      });
    }
  }

  // 发送视频信息
  void sendVideoMsg() async {
    await [Permission.videos].request();
    final XFile? _video =
        await ImagePicker().pickVideo(source: ImageSource.gallery);
    if (_video != null) {
      await createVideoMessage(
              file: File(_video.path), targetAccount: getUserId()!)
          .then((value) {
        return value.isSuccess
            ? Future(() {
                NIMMessage message = value.data!;
                _addMessage(message);
                return NimCore.instance.messageService
                    .sendMessage(message: message, resend: false);
              })
            : Future.value(value);
      });
    }
  }

  // 生成视频消息
  Future<NIMResult<NIMMessage>> createVideoMessage(
      {required File file, required String targetAccount}) {
    VideoPlayerController controller = VideoPlayerController.file(file);
    return controller.initialize().then((value) {
      return MessageBuilder.createVideoMessage(
        sessionId: targetAccount,
        sessionType: NIMSessionType.p2p,
        filePath: file.path,
        fileSize: file.lengthSync(),
        displayName: file.path.substring(file.path.lastIndexOf('/')),
        duration: controller.value.duration.inMilliseconds,
        height: controller.value.size.height ~/ 1,
        width: controller.value.size.width ~/ 1,
      ).whenComplete(controller.dispose);
    });
  }

  // 开始录制语音
  void startRecord() async {
    _isRecording = true;
    onUpdate();
    // 开始计时
    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      _voiceTime += 0.1;
      onUpdate();
    });
    // 开始录音
    await NimCore.instance.audioService
        .startRecord(AudioOutputFormat.AAC, 60)
        .then((value) {
      print('开始录制返回');
      print(value);
    });
  }

  // 停止录制语音
  void stopRecord() async {
    _timer?.cancel();
    // 停止录音
    await NimCore.instance.audioService.stopRecord().then((value) {
      print('停止录音返回：');
      print(value);
      _isRecording = false;
    });
  }

  // 发送语音消息
  void sendVoiceMsg() async {
    // 发送语音消息
    if (_voiceTime >= 1.0) {
      // 录音时长必须大于等于1秒才发送
      if (_voiceFilePath != null) {
        await MessageBuilder.createAudioMessage(
                sessionId: getUserId()!,
                sessionType: NIMSessionType.p2p,
                filePath: _voiceFilePath!,
                fileSize: _voiceFileSize!,
                duration: _voiceFileDuration!)
            .then((value) {
          print('创建语音消息返回：');
          print(value);
          return value.isSuccess
              ? Future(() {
                  NIMMessage message = value.data!;
                  _addMessage(message);
                  return NimCore.instance.messageService
                      .sendMessage(message: message, resend: false);
                }).then((value) {
                  print('发送语音消息返回: $value');
                })
              : Future.value(value);
        });
      }
    }
  }

  //将消息list添加到UI上
  void _addMessageList(List<NIMMessage> list) {
    messageList.addAll(list);
    _scrollToBottom();
  }

  // 将消息添加到UI上
  void _addMessage(NIMMessage message) {
    messageList.add(message);
    _scrollToBottom();
  }

  // 滚至底部
  void _scrollToBottom() {
    Future.delayed(const Duration(milliseconds: 20), () {
      messageListScrollController.animateTo(
          messageListScrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 10),
          curve: Curves.linearToEaseOut);
    });
    onUpdate();
  }

  // 清除未读数
  Future clearUnreadCount() async {
    if (conversation != null) {
      final sessionInfo = NIMSessionInfo(
          sessionId: conversation!.nimUser!.userId!,
          sessionType: NIMSessionType.p2p);
      updateSessionReadStatus(sessionInfo);
    }
    if (voiceUser != null) {
      final sessionInfo = NIMSessionInfo(
          sessionId: voiceUser!.yxAccid.toString(),
          sessionType: NIMSessionType.p2p);
      updateSessionReadStatus(sessionInfo);
    }
  }

  void updateSessionReadStatus(NIMSessionInfo sessionInfo) async {
    NimCore.instance.messageService.clearSessionUnreadCount([sessionInfo]);
    await NimCore.instance.messageService.querySessionList().then((value) {
      if (value.isSuccess) {
        print('清除未读消息成功');
      } else {
        print('清除未读消息失败');
      }
    });
  }
}
