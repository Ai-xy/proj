import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page02_model.dart';
export 'page02_model.dart';

class Page02Widget extends StatefulWidget {
  const Page02Widget({Key? key}) : super(key: key);

  @override
  _Page02WidgetState createState() => _Page02WidgetState();
}

class _Page02WidgetState extends State<Page02Widget> {
  late Page02Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page02Model());
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
        body: NestedScrollView(
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: false,
              floating: false,
              backgroundColor: FlutterFlowTheme.of(context).thisBackground,
              automaticallyImplyLeading: false,
              title: Text(
                'Game forum',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 2.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Container(
                            width: double.infinity,
                            height: 90.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.0),
                              child: Image.network(
                                'https://picsum.photos/seed/146/600',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).bottomColor,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 18.0, 12.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: Text(
                                    'All-service hot list',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
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
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/@2x_(1).png',
                                                      width: 24.0,
                                                      height: 24.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          8.0,
                                                          0.0,
                                                          0.0,
                                                          0.0),
                                                      child: Text(
                                                        'Operation Guide for Jedi Survival... ',
                                                        style: FlutterFlowTheme
                                                            .of(context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Poppins',
                                                          color: Color(
                                                              0xCCFFFFFF),
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/@2x_(1).png',
                                                        width: 16.0,
                                                        height: 16.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            2.0,
                                                            0.0,
                                                            0.0,
                                                            0.0),
                                                        child: Text(
                                                          '78K',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Poppins',
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .textColor,
                                                            fontSize: 12.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .dividercolor,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
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
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/@2x_(2)_(1).png',
                                                      width: 24.0,
                                                      height: 24.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          8.0,
                                                          0.0,
                                                          0.0,
                                                          0.0),
                                                      child: Text(
                                                        'Operation Guide for Jedi Survival... ',
                                                        style: FlutterFlowTheme
                                                            .of(context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Poppins',
                                                          color: Color(
                                                              0xCCFFFFFF),
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://picsum.photos/seed/188/600',
                                                        width: 16.0,
                                                        height: 16.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            2.0,
                                                            0.0,
                                                            0.0,
                                                            0.0),
                                                        child: Text(
                                                          '78K',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Poppins',
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .textColor,
                                                            fontSize: 12.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .dividercolor,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
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
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/@2x_(3)_(1).png',
                                                      width: 24.0,
                                                      height: 24.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          8.0,
                                                          0.0,
                                                          0.0,
                                                          0.0),
                                                      child: Text(
                                                        'Operation Guide for Jedi Survival... ',
                                                        style: FlutterFlowTheme
                                                            .of(context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Poppins',
                                                          color: Color(
                                                              0xCCFFFFFF),
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://picsum.photos/seed/188/600',
                                                        width: 16.0,
                                                        height: 16.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            2.0,
                                                            0.0,
                                                            0.0,
                                                            0.0),
                                                        child: Text(
                                                          '78K',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Poppins',
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .textColor,
                                                            fontSize: 12.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .dividercolor,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
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
                                                  children: [
                                                    Container(
                                                      width: 24.0,
                                                      height: 24.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                        Color(0x00FFFFFF),
                                                      ),
                                                      alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                      child: AutoSizeText(
                                                        '4',
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
                                                          fontSize:
                                                          12.0,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          8.0,
                                                          0.0,
                                                          0.0,
                                                          0.0),
                                                      child: Text(
                                                        'Operation Guide for Jedi Survival... ',
                                                        style: FlutterFlowTheme
                                                            .of(context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Poppins',
                                                          color: Color(
                                                              0xCCFFFFFF),
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://picsum.photos/seed/188/600',
                                                        width: 16.0,
                                                        height: 16.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            2.0,
                                                            0.0,
                                                            0.0,
                                                            0.0),
                                                        child: Text(
                                                          '78K',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Poppins',
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .textColor,
                                                            fontSize: 12.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .dividercolor,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: double.infinity,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                        ),
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
                                                  children: [
                                                    Container(
                                                      width: 24.0,
                                                      height: 24.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                        Color(0x00FFFFFF),
                                                      ),
                                                      alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                      child: AutoSizeText(
                                                        '5',
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
                                                          fontSize:
                                                          12.0,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          8.0,
                                                          0.0,
                                                          0.0,
                                                          0.0),
                                                      child: Text(
                                                        'Operation Guide for Jedi Survival... ',
                                                        style: FlutterFlowTheme
                                                            .of(context)
                                                            .bodyMedium
                                                            .override(
                                                          fontFamily:
                                                          'Poppins',
                                                          color: Color(
                                                              0xCBFFFFFF),
                                                          fontSize: 12.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        'https://picsum.photos/seed/188/600',
                                                        width: 16.0,
                                                        height: 16.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                            2.0,
                                                            0.0,
                                                            0.0,
                                                            0.0),
                                                        child: Text(
                                                          '78K',
                                                          style: FlutterFlowTheme
                                                              .of(context)
                                                              .bodyMedium
                                                              .override(
                                                            fontFamily:
                                                            'Poppins',
                                                            color: FlutterFlowTheme.of(
                                                                context)
                                                                .textColor,
                                                            fontSize: 12.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .dividercolor,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).bottomColor,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 18.0, 12.0, 0.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: Text(
                                        'All Channels',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                          fontFamily: 'Poppins',
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .white,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 8.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: (_model.apiRequestCompleter ??=
                                        Completer<ApiCallResponse>()
                                          ..complete(VoiceGameGroup
                                              .richTextMenuListCall
                                              .call(
                                            token: FFAppState().token,
                                          )))
                                            .future,
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                      context)
                                                      .primary,
                                                ),
                                              ),
                                            );
                                          }
                                          final listViewRichTextMenuListResponse =
                                          snapshot.data!;
                                          return Builder(
                                            builder: (context) {
                                              final menuList = getJsonField(
                                                listViewRichTextMenuListResponse
                                                    .jsonBody,
                                                r'''$.result''',
                                              ).toList();
                                              return RefreshIndicator(
                                                onRefresh: () async {
                                                  setState(() => _model
                                                      .apiRequestCompleter =
                                                  null);
                                                  await _model
                                                      .waitForApiRequestCompleted();
                                                },
                                                child: ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                  Axis.vertical,
                                                  itemCount: menuList.length,
                                                  itemBuilder:
                                                      (context, menuListIndex) {
                                                    final menuListItem =
                                                    menuList[menuListIndex];
                                                    return InkWell(
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          'GameForumDetails',
                                                          queryParams: {
                                                            'menuid':
                                                            serializeParam(
                                                              getJsonField(
                                                                menuListItem,
                                                                r'''$.id''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 68.0,
                                                        decoration:
                                                        BoxDecoration(
                                                          color:
                                                          Color(0x00FFFFFF),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  5.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                        BorderRadius.circular(6.0),
                                                                        child: Image
                                                                            .network(
                                                                          getJsonField(
                                                                            menuListItem,
                                                                            r'''$.menuIcon''',
                                                                          ),
                                                                          width:
                                                                          54.0,
                                                                          height:
                                                                          48.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                        Column(
                                                                          mainAxisSize:
                                                                          MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment.start,
                                                                          children: [
                                                                            Text(
                                                                              getJsonField(
                                                                                menuListItem,
                                                                                r'''$.menuName''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).white,
                                                                                fontSize: 14.0,
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 3.0, 0.0),
                                                                                  child: Text(
                                                                                    '2228.21K',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: FlutterFlowTheme.of(context).textColor,
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'People Discuss',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).textColor,
                                                                                    fontSize: 12.0,
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
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .keyboard_arrow_right_outlined,
                                                                          color:
                                                                          FlutterFlowTheme.of(context).textColor,
                                                                          size:
                                                                          24.0,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 1.0,
                                                              thickness: 1.0,
                                                              color: FlutterFlowTheme
                                                                  .of(context)
                                                                  .dividercolor,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
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
          ),
        ),
      ),
    );
  }
}
