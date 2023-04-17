import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page04_model.dart';
export 'page04_model.dart';

class Page04Widget extends StatefulWidget {
  const Page04Widget({Key? key}) : super(key: key);

  @override
  _Page04WidgetState createState() => _Page04WidgetState();
}

class _Page04WidgetState extends State<Page04Widget> {
  late Page04Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page04Model());
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

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).thisBackground,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding:
                  EdgeInsetsDirectional.fromSTEB(16.0, 36.0, 16.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 84.0,
                                      height: 84.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/754/600',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            'Jay Wells',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme.of(
                                                  context)
                                                  .white,
                                              fontSize: 18.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 8.0, 0.0, 8.0),
                                            child: Text(
                                              'ID：51515',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                Color(0xFF848591),
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Image.asset(
                                                'assets/images/@2x.png',
                                                width: 46.0,
                                                height: 16.0,
                                                fit: BoxFit.cover,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
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
                                                      begin:
                                                      AlignmentDirectional(
                                                          1.0, 0.0),
                                                      end: AlignmentDirectional(
                                                          -1.0, 0),
                                                    ),
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8.0),
                                                  ),
                                                  alignment:
                                                  AlignmentDirectional(
                                                      0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(1.0, 1.0,
                                                        1.0, 1.0),
                                                    child: AutoSizeText(
                                                      'TheSims',
                                                      textAlign:
                                                      TextAlign.center,
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyMedium
                                                          .override(
                                                        fontFamily:
                                                        'Poppins',
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .white,
                                                        fontSize: 8.0,
                                                        fontWeight:
                                                        FontWeight
                                                            .w300,
                                                        lineHeight: 1.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      2.0, 2.0, 2.0, 2.0),
                                  child: InkWell(
                                    onTap: () async {
                                      context.pushNamed('PersonalEdit');
                                    },
                                    child: Image.asset(
                                      'assets/images/icon_edit_16.png',
                                      width: 20.0,
                                      height: 20.0,
                                      fit: BoxFit.cover,
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
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () async {
                                  context.pushNamed('PersonalFans');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 7.0, 25.0, 4.0),
                                      child: Text(
                                        '8487',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Poppins',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .white,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 7.0),
                                      child: Text(
                                        'Fans',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF848591),
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  context.pushNamed('PersonalFollow');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 7.0, 25.0, 4.0),
                                      child: Text(
                                        '346',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Poppins',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .white,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 7.0),
                                      child: Text(
                                        'Follow',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF848591),
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  context.pushNamed('PersonalFriends');
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          25.0, 7.0, 25.0, 4.0),
                                      child: Text(
                                        '487K',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Poppins',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .white,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 7.0),
                                      child: Text(
                                        'Friends',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF848591),
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 69.0,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Stack(
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          context.pushNamed('PersonalRecharge');
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                            borderRadius:
                                            BorderRadius.circular(18.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 10.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(12.0),
                                              child: Image.asset(
                                                'assets/images/bg_banlance.png',
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                        AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 8.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              AutoSizeText(
                                                'Banlance',
                                                textAlign: TextAlign.center,
                                                maxLines: 1,
                                                style:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme
                                                      .of(context)
                                                      .white,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                    0.0, 2.0, 0.0, 0.0),
                                                child: AutoSizeText(
                                                  '682K',
                                                  textAlign: TextAlign.center,
                                                  maxLines: 1,
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Stack(
                                      children: [
                                        InkWell(
                                          onTap: () async {
                                            context
                                                .pushNamed('PersonalMyLevel');
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Color(0x00FFFFFF),
                                              borderRadius:
                                              BorderRadius.circular(18.0),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(12.0),
                                              child: Image.asset(
                                                'assets/images/bg_level.png',
                                                width: double.infinity,
                                                height: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20.0, 8.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Level',
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                      context)
                                                      .bodyMedium
                                                      .override(
                                                    fontFamily: 'Poppins',
                                                    color:
                                                    FlutterFlowTheme.of(
                                                        context)
                                                        .white,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      0.0, 2.0, 0.0, 0.0),
                                                  child: Text(
                                                    '07',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                        context)
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
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: InkWell(
                                  onTap: () async {
                                    context.pushNamed('PersonalMyCollection');
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF21222E),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 8.0, 0.0, 8.0),
                                              child: Image.asset(
                                                'assets/images/@2x_(4).png',
                                                width: 40.0,
                                                height: 40.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  8.0, 20.0, 8.0, 20.0),
                                              child: Text(
                                                'My collection',
                                                textAlign: TextAlign.center,
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
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 8.0, 0.0),
                                          child: Icon(
                                            Icons.chevron_right_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .textColor,
                                            size: 24.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: InkWell(
                                  onTap: () async {
                                    context.pushNamed(
                                        'PersonalHistoryBrowseRecords');
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF21222E),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 8.0, 0.0, 8.0),
                                              child: Image.asset(
                                                'assets/images/@2x_(1)_(1).png',
                                                width: 40.0,
                                                height: 40.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  8.0, 20.0, 8.0, 20.0),
                                              child: Text(
                                                'Browse records',
                                                textAlign: TextAlign.center,
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
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 8.0, 0.0),
                                          child: Icon(
                                            Icons.chevron_right_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .textColor,
                                            size: 24.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: InkWell(
                                  onTap: () async {
                                    context
                                        .pushNamed('PersonalCustomerService');
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF21222E),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 8.0, 0.0, 8.0),
                                              child: Image.asset(
                                                'assets/images/@2x_(2)_(1).png',
                                                width: 40.0,
                                                height: 40.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  8.0, 20.0, 8.0, 20.0),
                                              child: Text(
                                                'Customer service',
                                                textAlign: TextAlign.center,
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
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 8.0, 0.0),
                                          child: Icon(
                                            Icons.chevron_right_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .textColor,
                                            size: 24.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: InkWell(
                                  onTap: () async {
                                    context.pushNamed('PersonalSetting');
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF21222E),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 8.0, 0.0, 8.0),
                                              child: Image.asset(
                                                'assets/images/@2x_(3)_(1).png',
                                                width: 40.0,
                                                height: 40.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                  8.0, 20.0, 8.0, 20.0),
                                              child: Text(
                                                'Settings',
                                                textAlign: TextAlign.center,
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
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 8.0, 0.0),
                                          child: Icon(
                                            Icons.chevron_right_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .textColor,
                                            size: 24.0,
                                          ),
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
                              31.0, 40.0, 31.0, 20.0),
                          child: InkWell(
                            onTap: () async {
                              context.safePop();
                            },
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xFF21222E),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 12.0, 8.0, 12.0),
                                    child: Text(
                                      'Log out',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .pecialColor,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, -0.75),
                  child: Container(
                    width: 100.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).pecialColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(18.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(18.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 3.0, 0.0, 3.0),
                          child: AutoSizeText(
                            'Homepage',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              lineHeight: 1.0,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.chevron_right_sharp,
                          color: Colors.black,
                          size: 16.0,
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
}
