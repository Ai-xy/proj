import 'package:project/index.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'page01_model.dart';
export 'page01_model.dart';

class Page01Widget extends StatefulWidget {
  const Page01Widget({Key? key}) : super(key: key);

  @override
  _Page01WidgetState createState() => _Page01WidgetState();
}

class _Page01WidgetState extends State<Page01Widget> {
  late Page01Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page01Model());
    print('初始化');
    _model.saveDeviceInfo();
    _model.setOnUpdate(
      updateOnChange: true,
      onUpdate: () {
        setState(() {});
      },
    );
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
    print('build////////');

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).thisBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).thisBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Voice Game',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/icon_create_32@2x_(1).png',
                    width: 32.0,
                    height: 32.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 0.0, 0.0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed('create_room');
                      },
                      child: Image.asset(
                        'assets/images/icon_create_32@2x_(2).png',
                        width: 32.0,
                        height: 32.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 13.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: Wrap(
                            spacing: 0.0,
                            runSpacing: 0.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.vertical,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 26.0,
                                        constraints: BoxConstraints(
                                          maxWidth: 74.0,
                                          maxHeight: 26.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF21222E),
                                          borderRadius:
                                              BorderRadius.circular(13.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 5.0, 12.0, 5.0),
                                          child: AutoSizeText(
                                            'Popular',
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFFFD500),
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 26.0,
                                        constraints: BoxConstraints(
                                          maxWidth: 74.0,
                                          maxHeight: 26.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF21222E),
                                          borderRadius:
                                              BorderRadius.circular(13.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 5.0, 12.0, 5.0),
                                          child: AutoSizeText(
                                            'PUBG',
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF757682),
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 26.0,
                                        constraints: BoxConstraints(
                                          maxWidth: 74.0,
                                          maxHeight: 26.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF21222E),
                                          borderRadius:
                                              BorderRadius.circular(13.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 5.0, 12.0, 5.0),
                                          child: AutoSizeText(
                                            'PUBG',
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF757682),
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 26.0,
                                        constraints: BoxConstraints(
                                          maxWidth: 74.0,
                                          maxHeight: 26.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF21222E),
                                          borderRadius:
                                              BorderRadius.circular(13.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 5.0, 12.0, 5.0),
                                          child: AutoSizeText(
                                            'PUBG',
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF757682),
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 12.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 26.0,
                                        constraints: BoxConstraints(
                                          maxWidth: 74.0,
                                          maxHeight: 26.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF21222E),
                                          borderRadius:
                                              BorderRadius.circular(13.0),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 5.0, 12.0, 5.0),
                                          child: AutoSizeText(
                                            'PUBG',
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF757682),
                                                ),
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
                      Container(
                        width: double.infinity,
                        height: 500.0,
                        decoration: BoxDecoration(
                          color: Color(0x0021222E),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 5.0, 0.0),
                          // child: ListView(
                          //   padding: EdgeInsets.zero,
                          //   shrinkWrap: true,
                          //   scrollDirection: Axis.vertical,
                          //   children: roomList,
                          // ),
                          child: ListView.builder(
                              itemCount: _model.roomList.length,
                              itemBuilder: (BuildContext _, int index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (_) => RoomWidget(
                                        roomResult: _model.roomList[index],
                                      ),
                                    ))
                                        .then((value) {
                                      if (value != null) {
                                        _model.isMinimized = true;
                                        _model.room = value;
                                        setState(() {});
                                      }
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF21222E),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              width: 108.0,
                                              height: 98.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/117/600',
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      1.0,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      1.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 7.0, 12.0, 6.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        _model.roomList[index]
                                                            .roomName!,
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
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
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
                                                                          2.0,
                                                                          0.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/@2x_(1).png',
                                                                width: 16.0,
                                                                height: 16.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            AutoSizeText(
                                                              '856',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    14.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 16.0,
                                                          height: 16.0,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.network(
                                                            'https://picsum.photos/seed/468/600',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 16.0,
                                                        constraints:
                                                            BoxConstraints(
                                                          maxWidth: 58.0,
                                                          maxHeight: 16.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondary
                                                            ],
                                                            stops: [0.0, 1.0],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            end:
                                                                AlignmentDirectional(
                                                                    0, 1.0),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: AutoSizeText(
                                                          'PUBG',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .white,
                                                                fontSize: 10.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    'Welcome to the game discussion...',
                                                    textAlign: TextAlign.start,
                                                    maxLines: 2,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF757682),
                                                          fontSize: 12.0,
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
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
                _model.isMinimized
                    ? Align(
                        alignment: AlignmentDirectional(1.0, 0.75),
                        child: Container(
                          width: 215.0,
                          height: 56.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFD500),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(100.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(100.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4.0, 4.0, 0.0, 4.0),
                                  child: InkWell(
                                    onTap: () async {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (_) => RoomWidget(
                                          roomResult: _model.room,
                                        ),
                                      ));
                                    },
                                    child: Container(
                                      width: 48.0,
                                      height: 48.0,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/451/600',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0x00FFFFFF),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        9.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          _model.room?.roomName ??
                                              'Room name...',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.w600,
                                                lineHeight: 1.0,
                                              ),
                                        ),
                                        AutoSizeText(
                                          _model.room?.id.toString() ??
                                              'ID:5895955',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w500,
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 8.0, 16.0),
                                  child: Icon(
                                    Icons.close_sharp,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                ),
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
}
