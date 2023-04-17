import 'package:flutter/gestures.dart';
import 'package:nim_core/nim_core.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:project/models/AppUserConversationModel.dart';
import 'package:project/models/RoomInfo.dart';
import 'package:project/pages/message_private/mediaMessageCard.dart';
import '/components/expression_widget.dart';
import '/components/private_report_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'message_private_model.dart';
export 'message_private_model.dart';

class MessagePrivateWidget extends StatefulWidget {
  final AppUserConversationModel? conversation;
  final VoiceMikeDetailVoList? voiceUser;
  const MessagePrivateWidget({Key? key, this.conversation, this.voiceUser})
      : super(key: key);

  @override
  _MessagePrivateWidgetState createState() => _MessagePrivateWidgetState();
}

class _MessagePrivateWidgetState extends State<MessagePrivateWidget> {
  late MessagePrivateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    [Permission.microphone].request();
    _model = createModel(
        context,
        () => MessagePrivateModel(
            conversation: widget.conversation, voiceUser: widget.voiceUser));
    _model.textController ??= TextEditingController();
    _model.getHistoryData();
    _model.clearUnreadCount();
    _model.setOnUpdate(
      updateOnChange: true,
      onUpdate: () {
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    print('');
    _model.dispose();
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    print('build////');
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, true); // 在这里返回一个值
        return true; // 允许返回操作
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF1A1A29),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).thisBackground,
          automaticallyImplyLeading: true,
          leading: InkWell(
            onTap: () async {
              //context.safePop();
              Navigator.pop(context, true);
            },
            child: Icon(
              Icons.arrow_back_ios_rounded,
              color: FlutterFlowTheme.of(context).white,
              size: 24.0,
            ),
          ),
          title: Text(
            widget.conversation!.nimUser?.nick ??
                widget.voiceUser!.nickname ??
                'Jasyka',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).white,
                  fontSize: 18.0,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
              child: InkWell(
                onTap: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Color(0x80000000),
                    isDismissible: false,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: PrivateReportWidget(),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
                child: Icon(
                  Icons.keyboard_control_sharp,
                  color: FlutterFlowTheme.of(context).textColor,
                  size: 24.0,
                ),
              ),
            ),
          ],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 514,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: ListView.builder(
                        controller: _model.messageListScrollController,
                        itemCount: _model.messageList.length,
                        itemBuilder: (BuildContext context, int index) {
                          final NIMMessage message =
                              _model.messageList.elementAt(index);
                          final bool isMe =
                              message.fromAccount == _model.user!.yxAccid;
                          print("message.fromAccount: " +
                              message.fromAccount.toString());
                          print("_model.user!.yxAccid: " +
                              _model.user!.yxAccid.toString());
                          return isMe == true
                              ? senderCard(context, index, message)
                              : userCard(context, index, message);
                        }),
                  ),
                ),
                Expanded(
                  flex: 130,
                  child: Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxHeight: 150.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).thisBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 56.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).thisBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .bottomColor,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            flex: 10,
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.textController,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: 'Say something',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .textColor,
                                                        lineHeight: 1.0,
                                                      ),
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(4.0),
                                                      topRight:
                                                          Radius.circular(4.0),
                                                    ),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(20.0, 10.0,
                                                              20.0, 13.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          lineHeight: 1.0,
                                                        ),
                                                textAlign: TextAlign.start,
                                                validator: _model
                                                    .textControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 12.0, 0.0),
                                            child: InkWell(
                                              onTap: () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor: Colors.white,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return Padding(
                                                      padding:
                                                          MediaQuery.of(context)
                                                              .viewInsets,
                                                      child: ExpressionWidget(),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              child: Icon(
                                                Icons.tag_faces,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                                size: 24.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: GestureDetector(
                                    onTap: () {
                                      _model.sendMsg(context);
                                    },
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Image.asset(
                                        'assets/images/icon_send_32@2x_(1).png',
                                        width: 32.0,
                                        height: 32.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              22.0, 16.0, 22.0, 26.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                behavior: HitTestBehavior.opaque,
                                onLongPress: () {},
                                onLongPressDown:
                                    (LongPressDownDetails details) {
                                  _model.startRecord();
                                  // NimCore.instance.audioService
                                  //     .startRecord(AudioOutputFormat.AAC, 60);
                                },
                                onLongPressEnd: (LongPressEndDetails details) {
                                  _model.stopRecord();
                                  //NimCore.instance.audioService.stopRecord();
                                },
                                onLongPressCancel: () {
                                  NimCore.instance.audioService.cancelRecord();
                                },
                                child: Image.asset(
                                  'assets/images/icon_voice_40.png',
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _model.sendImgMsg();
                                },
                                child: Image.asset(
                                  'assets/images/icon_img_40.png',
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  _model.sendVideoMsg();
                                },
                                child: Image.asset(
                                  'assets/images/icon_video_40.png',
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Image.asset(
                                'assets/images/icon_gift_40@2x_(1).png',
                                width: 40.0,
                                height: 40.0,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 用户方聊天气泡
  senderCard(
    BuildContext context,
    int index,
    NIMMessage message,
  ) {
    if (message.messageType == NIMMessageType.image &&
        message.messageAttachment is NIMImageAttachment) {
      return senderChildCard(ImageMessageCard(message: message));
    }
    if (message.messageType == NIMMessageType.video &&
        message.messageAttachment is NIMVideoAttachment) {
      return senderChildCard(VideoMessageCard(message: message));
    }
    if (message.messageType == NIMMessageType.audio &&
        message.messageAttachment is NIMAudioAttachment) {
      return senderChildCard(AudioMessageCard(message: message));
    } else {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF21222E),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                  child: Text(
                    message.content ?? 'Hello World',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF848591),
                          fontSize: 12.0,
                        ),
                  ),
                ),
              ),
            ),
            Container(
              width: 40.0,
              height: 40.0,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                _model.user!.icon ?? 'https://picsum.photos/seed/825/600',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      );
    }
  }

  senderChildCard(Widget card) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF21222E),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                  child: card),
            ),
          ),
          Container(
            width: 40.0,
            height: 40.0,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              _model.user!.icon ?? 'https://picsum.photos/seed/825/600',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  // 好友方聊天气泡
  userCard(BuildContext context, int index, NIMMessage message) {
    if (message.messageType == NIMMessageType.image &&
        message.messageAttachment is NIMImageAttachment) {
      return userChildCard(ImageMessageCard(message: message));
    }
    if (message.messageType == NIMMessageType.video &&
        message.messageAttachment is NIMVideoAttachment) {
      return userChildCard(VideoMessageCard(message: message));
    }
    if (message.messageType == NIMMessageType.audio &&
        message.messageAttachment is NIMVideoAttachment) {
      return userChildCard(AudioMessageCard(message: message));
    } else {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40.0,
              height: 40.0,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network(
                widget.conversation!.nimUser?.avatar ??
                    widget.voiceUser!.icon ??
                    'https://picsum.photos/seed/825/600',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF21222E),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                  child: Text(
                    message.content ?? 'Hello World',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF848591),
                          fontSize: 12.0,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }

  userChildCard(Widget card) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 40.0,
            height: 40.0,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              widget.conversation!.nimUser?.avatar ??
                  widget.voiceUser!.icon ??
                  'https://picsum.photos/seed/825/600',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF21222E),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                  child: card),
            ),
          ),
        ],
      ),
    );
  }
}
