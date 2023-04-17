import '/components/game_forum_tap_other_head_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'game_form_replay_model.dart';
export 'game_form_replay_model.dart';

class GameFormReplayWidget extends StatefulWidget {
  const GameFormReplayWidget({Key? key}) : super(key: key);

  @override
  _GameFormReplayWidgetState createState() => _GameFormReplayWidgetState();
}

class _GameFormReplayWidgetState extends State<GameFormReplayWidget> {
  late GameFormReplayModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameFormReplayModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
            flex: 270,
            child: InkWell(
              onTap: () async {
                Navigator.pop(context);
              },
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 44,
            child: Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).thisBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () async {
                        context.safePop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: FlutterFlowTheme.of(context).white,
                        size: 30.0,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_control_rounded,
                      color: Color(0xFF848591),
                      size: 30.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 456,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).thisBackground,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Color(0x80000000),
                                                        isDismissible: false,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                            child:
                                                                GameForumTapOtherHeadWidget(),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    },
                                                    child: Container(
                                                      width: 40.0,
                                                      height: 40.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        'https://picsum.photos/seed/861/600',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    AutoSizeText(
                                                      'Jeanette Townsend',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF848591),
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                    AutoSizeText(
                                                      '03:00',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF848591),
                                                                fontSize: 11.0,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.keyboard_control_rounded,
                                              color: Color(0xFF848591),
                                              size: 20.0,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 12.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                            ),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        'Xiaohai is a 4am long board, big brother! Did you watch the boss cup and training match?',
                                                    style: TextStyle(),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0x8FFFFFFF),
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 12.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  AutoSizeText(
                                                    '568',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0x00848591),
                                                          fontSize: 10.0,
                                                        ),
                                                  ),
                                                  AutoSizeText(
                                                    '568',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0x00848591),
                                                          fontSize: 10.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/icon-comment@2x.png',
                                                    width: 24.0,
                                                    height: 24.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  AutoSizeText(
                                                    '568',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF848591),
                                                          fontSize: 10.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/icon_like_nor@2x.png',
                                                        width: 24.0,
                                                        height: 24.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                      Image.asset(
                                                        'assets/images/icon_like_nor@2x_(1).png',
                                                        width: 24.0,
                                                        height: 24.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ],
                                                  ),
                                                  AutoSizeText(
                                                    '568',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF848591),
                                                          fontSize: 10.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: Color(0x11FFFFFF),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 8.0, 0.0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Color(0x80000000),
                                                        isDismissible: false,
                                                        enableDrag: false,
                                                        context: context,
                                                        builder: (context) {
                                                          return Padding(
                                                            padding:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .viewInsets,
                                                            child:
                                                                GameForumTapOtherHeadWidget(),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    },
                                                    child: Container(
                                                      width: 40.0,
                                                      height: 40.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        'https://picsum.photos/seed/861/600',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    AutoSizeText(
                                                      'Jeanette Townsend',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF848591),
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                    AutoSizeText(
                                                      '03:00',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF848591),
                                                                fontSize: 11.0,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.keyboard_control_rounded,
                                              color: Color(0xFF848591),
                                              size: 20.0,
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 12.0),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                            ),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Replay ',
                                                    style: TextStyle(),
                                                  ),
                                                  TextSpan(
                                                    text: 'username',
                                                    style: TextStyle(
                                                      color: Color(0xC0FFD500),
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '：',
                                                    style: TextStyle(),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        'Xiaohai is a 4am long board, big brother! Did you watch the boss cup and training match?',
                                                    style: TextStyle(),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0x8FFFFFFF),
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 12.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  AutoSizeText(
                                                    '568',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0x00848591),
                                                          fontSize: 10.0,
                                                        ),
                                                  ),
                                                  AutoSizeText(
                                                    '568',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0x00848591),
                                                          fontSize: 10.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/icon-comment@2x.png',
                                                    width: 24.0,
                                                    height: 24.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  AutoSizeText(
                                                    '568',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF848591),
                                                          fontSize: 10.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/icon_like_nor@2x.png',
                                                        width: 24.0,
                                                        height: 24.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                      Image.asset(
                                                        'assets/images/icon_like_nor@2x_(1).png',
                                                        width: 24.0,
                                                        height: 24.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ],
                                                  ),
                                                  AutoSizeText(
                                                    '568',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF848591),
                                                          fontSize: 10.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: Color(0x11FFFFFF),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
