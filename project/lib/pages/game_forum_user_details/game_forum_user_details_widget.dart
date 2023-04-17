import '/components/game_form_replay_widget.dart';
import '/components/game_forum_tap_other_head_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'game_forum_user_details_model.dart';
export 'game_forum_user_details_model.dart';

class GameForumUserDetailsWidget extends StatefulWidget {
  const GameForumUserDetailsWidget({Key? key}) : super(key: key);

  @override
  _GameForumUserDetailsWidgetState createState() =>
      _GameForumUserDetailsWidgetState();
}

class _GameForumUserDetailsWidgetState
    extends State<GameForumUserDetailsWidget> {
  late GameForumUserDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameForumUserDetailsModel());

    _model.textController ??= TextEditingController();
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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).thisBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).thisBackground,
        automaticallyImplyLeading: true,
        leading: InkWell(
          onTap: () async {
            context.safePop();
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: FlutterFlowTheme.of(context).white,
            size: 24.0,
          ),
        ),
        title: Text(
          ' ',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).white,
                fontSize: 18.0,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 24.0, 0.0),
            child: Icon(
              Icons.keyboard_control_sharp,
              color: FlutterFlowTheme.of(context).textColor,
              size: 24.0,
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 8.0, 0.0),
                                        child: InkWell(
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Color(0x80000000),
                                              isDismissible: false,
                                              enableDrag: false,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.of(context)
                                                          .viewInsets,
                                                  child:
                                                      GameForumTapOtherHeadWidget(),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                          child: Container(
                                            width: 48.0,
                                            height: 48.0,
                                            clipBehavior: Clip.antiAlias,
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
                                      AutoSizeText(
                                        'Jeanette Townsend',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xDCFFFFFF),
                                              fontSize: 12.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .pecialColor,
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 5.0, 12.0, 5.0),
                                      child: AutoSizeText(
                                        'Follow',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 14.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: AutoSizeText(
                                  'Message title',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                        fontSize: 15.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 6.0, 0.0, 12.0),
                                child: AutoSizeText(
                                  'Published on: 02-01',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF848591),
                                        fontSize: 10.0,
                                      ),
                                ),
                              ),
                              AutoSizeText(
                                'The former ctg, the god of the regular season, is the last to the ninth in the playoffs, and the gap is hard to duplicate, but at least it played well in the regular season and won three weekly championships, giving people the illusion of a strong team.The current ctg, even if it can reach the playoffs, will not give people the illusion of a strong team. The most interesting thing about this team is that the players suddenly stopped playing, often changed players, and never made any achievements, hahahalt seems that the new season has also changed the jumping point to roll with others, right? Downgrading is not impossible',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xACFFFFFF),
                                      fontSize: 13.0,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 12.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: GridView(
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10.0,
                                      mainAxisSpacing: 10.0,
                                      childAspectRatio: 1.0,
                                    ),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        child: Image.network(
                                          'https://picsum.photos/seed/547/600',
                                          width: 100.0,
                                          height: 100.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        child: Image.network(
                                          'https://picsum.photos/seed/364/600',
                                          width: 100.0,
                                          height: 100.0,
                                          fit: BoxFit.cover,
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
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: AutoSizeText(
                                  'All comments(122)',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                        fontSize: 13.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 70.0),
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Color(
                                                                      0x80000000),
                                                              isDismissible:
                                                                  false,
                                                              enableDrag: false,
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return Padding(
                                                                  padding: MediaQuery.of(
                                                                          context)
                                                                      .viewInsets,
                                                                  child:
                                                                      GameForumTapOtherHeadWidget(),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                setState(
                                                                    () {}));
                                                          },
                                                          child: Container(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                Image.network(
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
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          AutoSizeText(
                                                            'Jeanette Townsend',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF848591),
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                          ),
                                                          AutoSizeText(
                                                            '03:00',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF848591),
                                                                  fontSize:
                                                                      11.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .keyboard_control_rounded,
                                                    color: Color(0xFF848591),
                                                    size: 20.0,
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 12.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00FFFFFF),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Xiaohai is a 4am long board, big brother! Did you watch the boss cup and training match?',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xACFFFFFF),
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF21222E),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 0.0, 2.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ListView(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        6.0,
                                                                        6.0,
                                                                        6.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x0021222E),
                                                              ),
                                                              child: RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          'username',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xC0FFD500),
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          ' ：',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xACFFFFFF),
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          'Look carefully, the state of Xiaohai. Many of these have been analyzed',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xACFFFFFF),
                                                                      ),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .white,
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        6.0,
                                                                        6.0,
                                                                        6.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x0021222E),
                                                              ),
                                                              child: RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          'Fokk',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xC0FFD500),
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          ' Replay ',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xACFFFFFF),
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          'username',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xC0FFD500),
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text: '：',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xACFFFFFF),
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          'Unlike you, I think the biggest weaknesses of these teams are',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xACFFFFFF),
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .white,
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      6.0,
                                                                      0.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              InkWell(
                                                                onTap:
                                                                    () async {
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Color(
                                                                            0x80000000),
                                                                    isDismissible:
                                                                        false,
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
                                                                            GameFormReplayWidget(),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      setState(
                                                                          () {}));
                                                                },
                                                                child:
                                                                    AutoSizeText(
                                                                  'All comments',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFF848591),
                                                                        fontSize:
                                                                            10.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            3.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_right_sharp,
                                                                  color: Color(
                                                                      0xFF848591),
                                                                  size: 15.0,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        AutoSizeText(
                                                          '568',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0x00848591),
                                                                fontSize: 10.0,
                                                              ),
                                                        ),
                                                        AutoSizeText(
                                                          '568',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0x00848591),
                                                                fontSize: 10.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/icon-comment@2x.png',
                                                          width: 24.0,
                                                          height: 24.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                        AutoSizeText(
                                                          '568',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF848591),
                                                                fontSize: 10.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
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
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF848591),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            await showModalBottomSheet(
                                                              isScrollControlled:
                                                                  true,
                                                              backgroundColor:
                                                                  Color(
                                                                      0x80000000),
                                                              isDismissible:
                                                                  false,
                                                              enableDrag: false,
                                                              context: context,
                                                              builder:
                                                                  (context) {
                                                                return Padding(
                                                                  padding: MediaQuery.of(
                                                                          context)
                                                                      .viewInsets,
                                                                  child:
                                                                      GameForumTapOtherHeadWidget(),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                setState(
                                                                    () {}));
                                                          },
                                                          child: Container(
                                                            width: 40.0,
                                                            height: 40.0,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                Image.network(
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
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          AutoSizeText(
                                                            'Jeanette Townsend',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF848591),
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                          ),
                                                          AutoSizeText(
                                                            '03:00',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF848591),
                                                                  fontSize:
                                                                      11.0,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .keyboard_control_rounded,
                                                    color: Color(0xFF848591),
                                                    size: 20.0,
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 12.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00FFFFFF),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Xiaohai is a 4am long board, big brother! Did you watch the boss cup and training match?',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xACFFFFFF),
                                                                fontSize: 12.0,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF21222E),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          2.0, 0.0, 2.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ListView(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        6.0,
                                                                        6.0,
                                                                        6.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x0021222E),
                                                              ),
                                                              child: RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          'username',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xC0FFD500),
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          ' ：',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xACFFFFFF),
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          'Look carefully, the state of Xiaohai. Many of these have been analyzed',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xACFFFFFF),
                                                                      ),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .white,
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        6.0,
                                                                        6.0,
                                                                        6.0,
                                                                        6.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x0021222E),
                                                              ),
                                                              child: RichText(
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          'Fokk',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xC0FFD500),
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          ' Replay ',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xACFFFFFF),
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          'username',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xC0FFD500),
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text: '：',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xACFFFFFF),
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          'Unlike you, I think the biggest weaknesses of these teams are',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xACFFFFFF),
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .white,
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      6.0,
                                                                      0.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              InkWell(
                                                                onTap:
                                                                    () async {
                                                                  await showModalBottomSheet(
                                                                    isScrollControlled:
                                                                        true,
                                                                    backgroundColor:
                                                                        Color(
                                                                            0x80000000),
                                                                    isDismissible:
                                                                        false,
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
                                                                            GameFormReplayWidget(),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      setState(
                                                                          () {}));
                                                                },
                                                                child:
                                                                    AutoSizeText(
                                                                  'All comments',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFF848591),
                                                                        fontSize:
                                                                            10.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            3.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Icon(
                                                                  Icons
                                                                      .keyboard_arrow_right_sharp,
                                                                  color: Color(
                                                                      0xFF848591),
                                                                  size: 15.0,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        AutoSizeText(
                                                          '568',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0x00848591),
                                                                fontSize: 10.0,
                                                              ),
                                                        ),
                                                        AutoSizeText(
                                                          '568',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0x00848591),
                                                                fontSize: 10.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Image.asset(
                                                          'assets/images/icon-comment@2x.png',
                                                          width: 24.0,
                                                          height: 24.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                        AutoSizeText(
                                                          '568',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF848591),
                                                                fontSize: 10.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
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
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF848591),
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
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).thisBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 161.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).bottomColor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Container(
                              width: 161.0,
                              child: TextFormField(
                                controller: _model.textController,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Say something',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12.0,
                                      ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          12.0, 13.0, 6.0, 13.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 12.0,
                                    ),
                                textAlign: TextAlign.start,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
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
                            '1123',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF848591),
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
                            '5683',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF848591),
                                  fontSize: 10.0,
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
        ),
      ),
    );
  }
}
