import 'package:fluttertoast/fluttertoast.dart';
import 'package:nim_core/nim_core.dart';
import 'package:project/components/expression_widget.dart';
import 'package:project/components/room_set_black_widget.dart';
import 'package:project/components/room_set_manager_widget.dart';
import 'package:project/index.dart';
import 'package:project/models/Room.dart';
import 'package:project/models/RoomInfo.dart';
import 'package:project/models/User.dart';
import 'package:project/pages/index/page01/page01_model.dart';
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
import 'room_model.dart';
export 'room_model.dart';

class RoomWidget extends StatefulWidget {
  // final Map params;
  // final BuildContext context;
  final RoomResult? roomResult;
  const RoomWidget({Key? key, this.roomResult}) : super(key: key);

  @override
  _RoomWidgetState createState() => _RoomWidgetState();
}

class _RoomWidgetState extends State<RoomWidget> {
  late RoomModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomModel());
    _model.roomResult = widget.roomResult;
    _model.setOnUpdate(
      updateOnChange: true,
      onUpdate: () {
        setState(() {});
      },
    );
    _model.enterChatroom(context);
  }

  @override
  void dispose() {
    _model.dispose();
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    RoomResult? roomResult = widget.roomResult;
    print('房间名');
    print(roomResult!.roomName);
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, widget.roomResult);
        return true;
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0x0A171724),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1E063B), Color(0xFF082C13)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 12,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 48.0,
                                      height: 48.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/609/600',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                _model.roomResult!.roomName ??
                                                    'jdajdladjlajd',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .white,
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                              Image.network(
                                                'https://picsum.photos/seed/535/600',
                                                width: 20.0,
                                                height: 14.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'ID: ' +
                                                    _model.roomResult!.id
                                                        .toString() ??
                                                'ID:658599',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .textColor,
                                                  fontSize: 10.0,
                                                ),
                                          ),
                                          Text(
                                            'welcom to china',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xCCFFFFFF),
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: Image.asset(
                                        'assets/images/icon_close_32_2@2x_(1).png',
                                        width: 32.0,
                                        height: 32.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 8.0, 0.0),
                                      child: InkWell(
                                        onTap: () async {
                                          context.pushNamed('Room_setting');
                                        },
                                        child: Image.asset(
                                          'assets/images/icon_close_32@2x_(1).png',
                                          width: 32.0,
                                          height: 32.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Color(0x7F000000),
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                              padding: MediaQuery.of(context)
                                                  .viewInsets,
                                              child: RoomLeaveWidget(),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      },
                                      child: Image.asset(
                                        'assets/images/icon_close_32@2x_(1).png',
                                        width: 32.0,
                                        height: 32.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 40.0, 0.0, 0.0),
                              child: Container(
                                  width: double.infinity,
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: GridView.builder(
                                      padding: EdgeInsets.zero,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 4,
                                        crossAxisSpacing: 15.0,
                                        mainAxisSpacing: 15.0,
                                        childAspectRatio: 1.0,
                                      ),
                                      scrollDirection: Axis.vertical,
                                      itemCount: 8,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        // 有人麦位
                                        if (_model.isMicBeingOccupied[index] ==
                                            true) {
                                          // 当前用户上麦后的麦位
                                          if (_model.localUserJoined == true &&
                                              index + 1 == _model.micIndex) {
                                            return micJoinChannelSuccessWidget(
                                                user: _model.user,
                                                index: index + 1);
                                          } else {
                                            // 其他在麦上的用户
                                            int i = _model
                                                    .voiceMikeDetailVoList![
                                                        index]
                                                    .mikeIndex! -
                                                1;
                                            // 其他上麦用户
                                            return micJoinChannelSuccessWidget(
                                                otherUser: _model
                                                        .voiceMikeDetailVoList?[
                                                    index],
                                                index: i);
                                          }
                                        }
                                        // 无人麦位
                                        else {
                                          return micJoinChannelAwaitWidget(
                                              index + 1);
                                        }
                                      })
                                  // child: GridView(
                                  //   padding: EdgeInsets.zero,
                                  //   gridDelegate:
                                  //       SliverGridDelegateWithFixedCrossAxisCount(
                                  //     crossAxisCount: 4,
                                  //     crossAxisSpacing: 15.0,
                                  //     mainAxisSpacing: 15.0,
                                  //     childAspectRatio: 1.0,
                                  //   ),
                                  //   scrollDirection: Axis.vertical,
                                  //   children: [
                                  //     Container(
                                  //       width: double.infinity,
                                  //       height: 100.0,
                                  //       decoration: BoxDecoration(
                                  //         color: Color(0x00FFFFFF),
                                  //       ),
                                  //       child: Column(
                                  //         mainAxisSize: MainAxisSize.max,
                                  //         children: [
                                  //           Container(
                                  //             width: 60.0,
                                  //             height: 60.0,
                                  //             decoration: BoxDecoration(
                                  //               color: Color(0x19FFFFFF),
                                  //               shape: BoxShape.circle,
                                  //             ),
                                  //             child: Stack(
                                  //               children: [
                                  //                 Container(
                                  //                   width: 100.0,
                                  //                   height: 100.0,
                                  //                   decoration: BoxDecoration(
                                  //                     color: Color(0x00FFFFFF),
                                  //                   ),
                                  //                   alignment: AlignmentDirectional(
                                  //                       0.0, 0.050000000000000044),
                                  //                   child: Stack(
                                  //                     alignment:
                                  //                         AlignmentDirectional(
                                  //                             0.0, 0.0),
                                  //                     children: [
                                  //                       InkWell(
                                  //                         onTap: () async {
                                  //                           await showModalBottomSheet(
                                  //                             isScrollControlled:
                                  //                                 true,
                                  //                             backgroundColor:
                                  //                                 Color(0x80000000),
                                  //                             enableDrag: false,
                                  //                             context: context,
                                  //                             builder: (context) {
                                  //                               return Padding(
                                  //                                   padding: MediaQuery.of(
                                  //                                           context)
                                  //                                       .viewInsets,
                                  //                                   child: dialog(
                                  //                                       context)
                                  //                                   //RoomLockMicWidget(),
                                  //                                   );
                                  //                             },
                                  //                           ).then((value) =>
                                  //                               setState(() {}));
                                  //                         },
                                  //                         child: Icon(
                                  //                           Icons.add,
                                  //                           color:
                                  //                               FlutterFlowTheme.of(
                                  //                                       context)
                                  //                                   .white,
                                  //                           size: 24.0,
                                  //                         ),
                                  //                       ),
                                  //                       Icon(
                                  //                         Icons.lock_outlined,
                                  //                         color:
                                  //                             FlutterFlowTheme.of(
                                  //                                     context)
                                  //                                 .white,
                                  //                         size: 24.0,
                                  //                       ),
                                  //                       InkWell(
                                  //                         onTap: () async {
                                  //                           await showModalBottomSheet(
                                  //                             isScrollControlled:
                                  //                                 true,
                                  //                             backgroundColor:
                                  //                                 Color(0x80000000),
                                  //                             context: context,
                                  //                             builder: (context) {
                                  //                               return Padding(
                                  //                                 padding: MediaQuery
                                  //                                         .of(context)
                                  //                                     .viewInsets,
                                  //                                 child:
                                  //                                     RoomTapHeadDetailWidget(),
                                  //                               );
                                  //                             },
                                  //                           ).then((value) =>
                                  //                               setState(() {}));
                                  //                         },
                                  //                         child: ClipRRect(
                                  //                           borderRadius:
                                  //                               BorderRadius
                                  //                                   .circular(50.0),
                                  //                           child: Image.network(
                                  //                             'https://picsum.photos/seed/186/600',
                                  //                             width: 100.0,
                                  //                             height: 100.0,
                                  //                             fit: BoxFit.cover,
                                  //                           ),
                                  //                         ),
                                  //                       ),
                                  //                     ],
                                  //                   ),
                                  //                 ),
                                  //                 Align(
                                  //                   alignment: AlignmentDirectional(
                                  //                       0.0, 1.0),
                                  //                   child: Container(
                                  //                     width: 28.0,
                                  //                     height: 12.0,
                                  //                     decoration: BoxDecoration(
                                  //                       color: FlutterFlowTheme.of(
                                  //                               context)
                                  //                           .pecialColor,
                                  //                       borderRadius:
                                  //                           BorderRadius.circular(
                                  //                               6.0),
                                  //                     ),
                                  //                     alignment:
                                  //                         AlignmentDirectional(
                                  //                             0.0, 0.0),
                                  //                     child: Align(
                                  //                       alignment:
                                  //                           AlignmentDirectional(
                                  //                               0.0, 0.0),
                                  //                       child: AutoSizeText(
                                  //                         '8314',
                                  //                         textAlign:
                                  //                             TextAlign.center,
                                  //                         style:
                                  //                             FlutterFlowTheme.of(
                                  //                                     context)
                                  //                                 .bodyMedium
                                  //                                 .override(
                                  //                                   fontFamily:
                                  //                                       'Poppins',
                                  //                                   fontSize: 3.0,
                                  //                                   fontWeight:
                                  //                                       FontWeight
                                  //                                           .normal,
                                  //                                   lineHeight: 1.0,
                                  //                                 ),
                                  //                       ),
                                  //                     ),
                                  //                   ),
                                  //                 ),
                                  //               ],
                                  //             ),
                                  //           ),
                                  //           Text(
                                  //             'Angel Blair',
                                  //             style: FlutterFlowTheme.of(context)
                                  //                 .bodyMedium
                                  //                 .override(
                                  //                   fontFamily: 'Poppins',
                                  //                   color: Color(0xCBFFFFFF),
                                  //                   fontSize: 10.0,
                                  //                   lineHeight: 1.0,
                                  //                 ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //     Container(
                                  //       width: double.infinity,
                                  //       height: 100.0,
                                  //       decoration: BoxDecoration(
                                  //         color: Color(0x00FFFFFF),
                                  //       ),
                                  //       child: Column(
                                  //         mainAxisSize: MainAxisSize.max,
                                  //         children: [
                                  //           Container(
                                  //             width: 60.0,
                                  //             height: 60.0,
                                  //             decoration: BoxDecoration(
                                  //               color: Color(0x19FFFFFF),
                                  //               shape: BoxShape.circle,
                                  //             ),
                                  //             child: Stack(
                                  //               children: [
                                  //                 Container(
                                  //                   width: 100.0,
                                  //                   height: 100.0,
                                  //                   decoration: BoxDecoration(
                                  //                     color: Color(0x00FFFFFF),
                                  //                   ),
                                  //                   alignment: AlignmentDirectional(
                                  //                       0.0, 0.050000000000000044),
                                  //                   child: Stack(
                                  //                     alignment:
                                  //                         AlignmentDirectional(
                                  //                             0.0, 0.0),
                                  //                     children: [
                                  //                       InkWell(
                                  //                         onTap: () async {
                                  //                           await showModalBottomSheet(
                                  //                             isScrollControlled:
                                  //                                 true,
                                  //                             backgroundColor:
                                  //                                 Color(0x7F000000),
                                  //                             context: context,
                                  //                             builder: (context) {
                                  //                               return Padding(
                                  //                                   padding: MediaQuery.of(
                                  //                                           context)
                                  //                                       .viewInsets,
                                  //                                   child: dialog(
                                  //                                       context)
                                  //                                   //RoomLockMicWidget(),
                                  //                                   );
                                  //                             },
                                  //                           ).then((value) =>
                                  //                               setState(() {}));
                                  //                         },
                                  //                         child: Icon(
                                  //                           Icons.add,
                                  //                           color:
                                  //                               FlutterFlowTheme.of(
                                  //                                       context)
                                  //                                   .white,
                                  //                           size: 24.0,
                                  //                         ),
                                  //                       ),
                                  //                     ],
                                  //                   ),
                                  //                 ),
                                  //               ],
                                  //             ),
                                  //           ),
                                  //           Text(
                                  //             'Angel Blair',
                                  //             style: FlutterFlowTheme.of(context)
                                  //                 .bodyMedium
                                  //                 .override(
                                  //                   fontFamily: 'Poppins',
                                  //                   color: Color(0xCBFFFFFF),
                                  //                   fontSize: 10.0,
                                  //                   lineHeight: 1.0,
                                  //                 ),
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //     micWidget(),
                                  //     micWidget(),
                                  //     micWidget(),
                                  //     micWidget(),
                                  //     micWidget(),
                                  //     micWidget(),
                                  //   ],
                                  // ),
                                  ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 400.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                              child: ListView.builder(
                                controller: _model.messageListScrollController,
                                itemBuilder: (context, index) {
                                  // 欢迎消息
                                  if (index == 0) {
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 30.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 132.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x25FF4C88),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 8.0, 8.0, 8.0),
                                          child: Container(
                                            width: 78.7,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                            ),
                                            child: AutoSizeText(
                                              'Welcome to the voice room. Please abide by relevant laws and regulations and do not spreadvulgar,Violent and other bad information. You are welcome to give us feedback on your feelings during use!！',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xB2FFFFFF),
                                                        fontSize: 14.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  } else if (_model.isNewMember == true &&
                                      index == 1) {
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 30.0, 0.0),
                                      child: Container(
                                        width: 100.0,
                                        height: 32.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x27FFD500),
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Text(
                                                  'Welcom',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .white,
                                                        fontSize: 14.0,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: Text(
                                                  _model.memberList.last!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xBFFFD500),
                                                        fontSize: 14.0,
                                                      ),
                                                ),
                                              ),
                                              Text(
                                                'into the room',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .white,
                                                          fontSize: 14.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  } else {
                                    if (_model.messageList.isNotEmpty) {
                                      int messageIndex = index -
                                          1 -
                                          (_model.isNewMember ? 1 : 0);
                                      print('index: $index' +
                                          'messagelist的index: ${index - 1 - (_model.isNewMember ? 1 : 0)}');
                                      // 聊天室成员发送的消息
                                      NIMChatroomMessage message =
                                          _model.messageList[messageIndex];
                                      return Container(
                                        width: 100.0,
                                        height: 100.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: 35.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x00FFFFFF),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: 32.0,
                                                        height: 32.0,
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Image.network(
                                                          'https://picsum.photos/seed/842/600',
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Text(
                                                        message.extension!
                                                                .nickname ??
                                                            _model.user!
                                                                .nickname ??
                                                            'username',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0xBFFFD500),
                                                              fontSize: 16.0,
                                                            ),
                                                      ),
                                                    ),
                                                    Image.asset(
                                                      message.extension!
                                                              .avatar ??
                                                          'assets/images/Level_10@2x_(1).png',
                                                      width: 46.0,
                                                      height: 16.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 100.0,
                                              height: 32.0,
                                              decoration: BoxDecoration(
                                                color: Color(0x26000000),
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Text(
                                                message.content ??
                                                    'Hello World',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .white,
                                                          fontSize: 14.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  }
                                },
                                itemCount: 1 +
                                    _model.messageList.length +
                                    (_model.isNewMember ? 1 : 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 30.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      'assets/images/icon_offmic_32@2x_(1).png',
                                      width: 32.0,
                                      height: 32.0,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.asset(
                                      'assets/images/icon_offmic_32@2x_(1).png',
                                      width: 32.0,
                                      height: 32.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      'assets/images/icon_offmic_32@2x_(2)_(1).png',
                                      width: 32.0,
                                      height: 32.0,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.asset(
                                      'assets/images/icon_offmic_32@2x_(2)_(1).png',
                                      width: 32.0,
                                      height: 32.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Color(0x80FFFFFF),
                                  barrierColor: Color(0x46000000),
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: RoomSendGiftWidget(),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: Image.asset(
                                'assets/images/icon_gift_40@2x_(1).png',
                                width: 40.0,
                                height: 40.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.white,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.of(context).viewInsets,
                                          child: FunctionsWidget(),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                  child: Image.asset(
                                    'assets/images/icon_offmic_32_4@2x_(1).png',
                                    width: 32.0,
                                    height: 32.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Color(0x67000000),
                                      barrierColor: Color(0x57000000),
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.of(context).viewInsets,
                                          child: Container(
                                            width: double.infinity,
                                            height: 56.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .thisBackground,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Expanded(
                                                    flex: 8,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  8.0),
                                                      child: Container(
                                                        width: 100.0,
                                                        height: 100.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .bottomColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              flex: 10,
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    TextFormField(
                                                                  controller: _model
                                                                      .textController,
                                                                  autofocus:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    hintText:
                                                                        'Say something',
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).textColor,
                                                                          lineHeight:
                                                                              1.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    focusedBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    errorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        UnderlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0x00000000),
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          const BorderRadius
                                                                              .only(
                                                                        topLeft:
                                                                            Radius.circular(4.0),
                                                                        topRight:
                                                                            Radius.circular(4.0),
                                                                      ),
                                                                    ),
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            20.0,
                                                                            10.0,
                                                                            20.0,
                                                                            13.0),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        lineHeight:
                                                                            1.0,
                                                                      ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  validator: _model
                                                                      .textControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                              child: InkWell(
                                                                onTap:
                                                                    () async {
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Colors
                                                                            .white,
                                                                    enableDrag:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (context) {
                                                                      return Padding(
                                                                        padding:
                                                                            MediaQuery.of(context).viewInsets,
                                                                        child:
                                                                            ExpressionWidget(),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      setState(
                                                                          () {}));
                                                                },
                                                                child: Icon(
                                                                  Icons
                                                                      .tag_faces,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          _model.sendMessage(
                                                              context);
                                                        },
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
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                  child: Image.asset(
                                    'assets/images/icon_offmic_32_3@2x_(1).png',
                                    width: 32.0,
                                    height: 32.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                _model.isGift
                    ? Align(
                        alignment: AlignmentDirectional(-1.0, -0.2),
                        child: Container(
                          width: 320.0,
                          height: 56.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0x00FFD500),
                                FlutterFlowTheme.of(context).pecialColor
                              ],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(1.0, 0.0),
                              end: AlignmentDirectional(-1.0, 0),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/734/600',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'send',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .white,
                                          fontSize: 14.0,
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
                                      'https://picsum.photos/seed/734/600',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Image.network(
                                    'https://picsum.photos/seed/614/600',
                                    width: 56.0,
                                    height: 56.0,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    'X1024',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .pecialColor,
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.w800,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }

  dialog(BuildContext context, int index) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 250,
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
            ),
          ),
          Expanded(
            flex: 224,
            child: Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 45,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 224,
                    child: Container(
                      width: 100.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).thisBackground,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                //checkMick(index);
                                if (_model.localUserJoined == true) {
                                  Fluttertoast.showToast(msg: '您已在麦上');
                                } else {
                                  if (_model.localUserInAgora == false) {
                                    Fluttertoast.showToast(msg: '声网初始化未完成');
                                  } else {
                                    _model.userOnMike(context, index);
                                  }
                                  //_model.isMicBeingOccupied[index] = true;
                                  //_model.initAgora(context,index);
                                  //_model.userDownMike();
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 0.0, 30.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: AutoSizeText(
                                          'Take the Mic',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .white,
                                                fontSize: 14.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).dividercolor,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 30.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    AutoSizeText(
                                      'Lock the Mic',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                            fontSize: 14.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).dividercolor,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 30.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    AutoSizeText(
                                      'Lock sll Mic',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                            fontSize: 14.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).dividercolor,
                          ),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () async {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 0.0, 30.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      AutoSizeText(
                                        'Cancel',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .pecialColor,
                                              fontSize: 14.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).dividercolor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 45,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 338,
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
            ),
          ),
        ],
      ),
    );
  }

  sayHiWidget(int index, VoiceMikeDetailVoList? user) {
    return Stack(
      children: [
        InkWell(
          onTap: () async {
            Navigator.pop(context);
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0x00FFFFFF),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Container(
            width: double.infinity,
            height: 350.0,
            decoration: BoxDecoration(
              color: Color(0x00FFFFFF),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 42.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).thisBackground,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 12.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.asset(
                                'assets/images/icon_offmic_32_5@2x_(1).png',
                                width: 32.0,
                                height: 32.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                user!.nickname ?? 'Jay Wells',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context).white,
                                      fontSize: 18.0,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Image.asset(
                                    'assets/images/@2x_(1).png',
                                    width: 16.0,
                                    height: 16.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.asset(
                                  'assets/images/@2x_(1).png',
                                  width: 16.0,
                                  height: 16.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 6.0, 0.0, 6.0),
                          child: Text(
                            'ID: ${user.userId.toString()}',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).textColor,
                                  fontSize: 12.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 32.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/@2x.png',
                                width: 46.0,
                                height: 16.0,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: 54.0,
                                  height: 16.0,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF5783FF),
                                        Color(0xFF68CDF3)
                                      ],
                                      stops: [0.0, 1.0],
                                      begin: AlignmentDirectional(1.0, 0.0),
                                      end: AlignmentDirectional(-1.0, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        1.0, 1.0, 1.0, 1.0),
                                    child: AutoSizeText(
                                      'TheSims',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .white,
                                            fontSize: 10.0,
                                            lineHeight: 1.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 54.0,
                                height: 16.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF655EF8),
                                      Color(0xFFC765FF)
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(1.0, -0.5),
                                    end: AlignmentDirectional(-1.0, 0.5),
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      1.0, 1.0, 1.0, 1.0),
                                  child: Text(
                                    'PUBG',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .white,
                                          fontSize: 10.0,
                                          lineHeight: 1.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              32.0, 0.0, 32.0, 30.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Color(0x80000000),
                                    isDismissible: false,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: RoomSetBlackWidget(),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                                child: Image.asset(
                                  'assets/images/icon_offmic_32_2@2x.png',
                                  width: 32.0,
                                  height: 32.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                width: 32.0,
                                height: 32.0,
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      'assets/images/icon_offmic_32@2x_(2)_(1).png',
                                      width: 32.0,
                                      height: 32.0,
                                      fit: BoxFit.cover,
                                    ),
                                    Image.asset(
                                      'assets/images/icon_offmic_32_6@2x.png',
                                      width: 32.0,
                                      height: 32.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _model.userDownMike(index);
                                  });
                                },
                                child: Image.asset(
                                  'assets/images/icon_offmic_32@2x_(3).png',
                                  width: 32.0,
                                  height: 32.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Image.asset(
                                'assets/images/icon_offmic_32@2x_(5).png',
                                width: 32.0,
                                height: 32.0,
                                fit: BoxFit.cover,
                              ),
                              InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Color(0x80000000),
                                    isDismissible: false,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: RoomSetManagerWidget(),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                                child: Image.asset(
                                  'assets/images/icon_offmic_32_3@2x_(2).png',
                                  width: 32.0,
                                  height: 32.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Image.asset(
                                'assets/images/icon_offmic_32_4@2x_(2).png',
                                width: 32.0,
                                height: 32.0,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xE7FFD500),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'Follow',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MessagePrivateWidget(
                                                  voiceUser: user)));
                                  context.push('MessagePrivate');
                                },
                                child: Container(
                                  width: 140.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F1F3),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Say hi',
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
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
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    width: 84.0,
                    height: 84.0,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).thisBackground,
                        width: 4.0,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                        user.icon ?? 'https://picsum.photos/seed/654/600',
                        width: 84.0,
                        height: 84.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // 上麦成功控件
  micJoinChannelSuccessWidget(
      {User? user, required int index, VoiceMikeDetailVoList? otherUser}) {
    String? avatar;
    String? nickName;
    if (user != null) {
      avatar = user.icon;
      nickName = user.nickname;
    } else if (otherUser != null) {
      avatar = otherUser.icon;
      nickName = otherUser.nickname;
    }
    return Container(
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: Color(0x19FFFFFF),
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.050000000000000044),
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    children: [
                      InkWell(
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Color(0x80000000),
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: dialog(context, index)
                                  //RoomLockMicWidget(),
                                  );
                            },
                          ).then((value) => setState(() {}));
                        },
                        child: Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).white,
                          size: 24.0,
                        ),
                      ),
                      Icon(
                        Icons.lock_outlined,
                        color: FlutterFlowTheme.of(context).white,
                        size: 24.0,
                      ),
                      InkWell(
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Color(0x80000000),
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: sayHiWidget(index, otherUser),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.network(
                            avatar ?? 'https://picsum.photos/seed/186/600',
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Container(
                    width: 28.0,
                    height: 12.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).pecialColor,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: AutoSizeText(
                        user?.userId.toString() ?? '8314',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 3.0,
                              fontWeight: FontWeight.normal,
                              lineHeight: 1.0,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            nickName ?? 'Angel Blair',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  color: Color(0xCBFFFFFF),
                  fontSize: 10.0,
                  lineHeight: 1.0,
                ),
          ),
        ],
      ),
    );
  }

  // 等待上麦控件
  micJoinChannelAwaitWidget(int index) {
    return Container(
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: Color(0x19FFFFFF),
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.050000000000000044),
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    children: [
                      InkWell(
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Color(0x7F000000),
                            context: context,
                            builder: (context) {
                              return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: dialog(context, index)
                                  //RoomLockMicWidget(),
                                  );
                            },
                          ).then((value) => setState(() {}));
                        },
                        child: Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).white,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Angel Blair',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  color: Color(0xCBFFFFFF),
                  fontSize: 10.0,
                  lineHeight: 1.0,
                ),
          ),
        ],
      ),
    );
  }

  // 被锁麦位
  micLockWidget() {
    return Container(
      width: double.infinity,
      height: 100.0,
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              color: Color(0x19FFFFFF),
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.050000000000000044),
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    children: [
                      InkWell(
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Color(0x7F000000),
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: RoomUnlockMicWidget(),
                              );
                            },
                          ).then((value) => setState(() {}));
                        },
                        child: Icon(
                          Icons.lock_outlined,
                          color: FlutterFlowTheme.of(context).white,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Angel Blair',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  color: Color(0xCBFFFFFF),
                  fontSize: 10.0,
                  lineHeight: 1.0,
                ),
          ),
        ],
      ),
    );
  }
}
