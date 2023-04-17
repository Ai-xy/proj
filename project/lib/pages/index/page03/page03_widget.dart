import 'package:dart_date/dart_date.dart';
import 'package:date_format/date_format.dart';
import 'package:project/pages/message_private/message_private_widget.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page03_model.dart';
export 'page03_model.dart';

class Page03Widget extends StatefulWidget {
  const Page03Widget({Key? key}) : super(key: key);

  @override
  _Page03WidgetState createState() => _Page03WidgetState();
}

class _Page03WidgetState extends State<Page03Widget> {
  late Page03Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Page03Model());
    _model.getSessionList();
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
    // return ChangeNotifierProvider(create: (_)=>Page03Model(),
    //   child: Consumer<Page03Model>(
    //     builder: (_, model, __){
    //       return Scaffold(
    //         key: scaffoldKey,
    //         backgroundColor: FlutterFlowTheme.of(context).thisBackground,
    //         appBar: AppBar(
    //           backgroundColor: FlutterFlowTheme.of(context).thisBackground,
    //           automaticallyImplyLeading: false,
    //           title: Text(
    //             'Messages',
    //             style: FlutterFlowTheme.of(context).headlineMedium.override(
    //               fontFamily: 'Poppins',
    //               color: Colors.white,
    //               fontSize: 22.0,
    //             ),
    //           ),
    //           actions: [],
    //           centerTitle: false,
    //           elevation: 2.0,
    //         ),
    //         body: SafeArea(
    //           child: GestureDetector(
    //             onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
    //             child: Padding(
    //               padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
    //               child: Column(
    //                 mainAxisSize: MainAxisSize.max,
    //                 children: [
    //                   Container(
    //                     width: double.infinity,
    //                     height: 130.0,
    //                     decoration: BoxDecoration(
    //                       color: Color(0x00FFFFFF),
    //                     ),
    //                     child: Padding(
    //                       padding:
    //                       EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
    //                       child: Row(
    //                         mainAxisSize: MainAxisSize.max,
    //                         mainAxisAlignment: MainAxisAlignment.center,
    //                         children: [
    //                           Expanded(
    //                             flex: 1,
    //                             child: InkWell(
    //                               onTap: () async {
    //                                 context.pushNamed('HomePage');
    //                               },
    //                               child: Column(
    //                                 mainAxisSize: MainAxisSize.max,
    //                                 children: [
    //                                   ClipRRect(
    //                                     borderRadius: BorderRadius.circular(25.0),
    //                                     child: Image.asset(
    //                                       'assets/images/icon_myroom_56.png',
    //                                       width: 56.0,
    //                                       height: 56.0,
    //                                       fit: BoxFit.cover,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: EdgeInsetsDirectional.fromSTEB(
    //                                         0.0, 8.0, 0.0, 0.0),
    //                                     child: AutoSizeText(
    //                                       'My room',
    //                                       textAlign: TextAlign.center,
    //                                       style: FlutterFlowTheme.of(context)
    //                                           .bodyMedium
    //                                           .override(
    //                                         fontFamily: 'Poppins',
    //                                         color: Color(0xFF848591),
    //                                         fontSize: 12.0,
    //                                         fontWeight: FontWeight.w300,
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                           ),
    //                           Expanded(
    //                             flex: 1,
    //                             child: InkWell(
    //                               onTap: () async {
    //                                 context.pushNamed('MessageSystemNotion');
    //                               },
    //                               child: Column(
    //                                 mainAxisSize: MainAxisSize.max,
    //                                 children: [
    //                                   ClipRRect(
    //                                     borderRadius: BorderRadius.circular(25.0),
    //                                     child: Image.asset(
    //                                       'assets/images/icon_myroom_56_(1).png',
    //                                       width: 56.0,
    //                                       height: 56.0,
    //                                       fit: BoxFit.cover,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: EdgeInsetsDirectional.fromSTEB(
    //                                         0.0, 8.0, 0.0, 0.0),
    //                                     child: AutoSizeText(
    //                                       'System Notion',
    //                                       textAlign: TextAlign.center,
    //                                       maxLines: 2,
    //                                       style: FlutterFlowTheme.of(context)
    //                                           .bodyMedium
    //                                           .override(
    //                                         fontFamily: 'Poppins',
    //                                         color: Color(0xFF848591),
    //                                         fontSize: 12.0,
    //                                         fontWeight: FontWeight.w300,
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                           ),
    //                           Expanded(
    //                             flex: 1,
    //                             child: InkWell(
    //                               onTap: () async {
    //                                 context.pushNamed('MessageNew_Following');
    //                               },
    //                               child: Column(
    //                                 mainAxisSize: MainAxisSize.max,
    //                                 children: [
    //                                   ClipRRect(
    //                                     borderRadius: BorderRadius.circular(25.0),
    //                                     child: Image.asset(
    //                                       'assets/images/icon_myroom_56_(2).png',
    //                                       width: 56.0,
    //                                       height: 56.0,
    //                                       fit: BoxFit.cover,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: EdgeInsetsDirectional.fromSTEB(
    //                                         0.0, 8.0, 0.0, 0.0),
    //                                     child: AutoSizeText(
    //                                       'Follow',
    //                                       textAlign: TextAlign.center,
    //                                       style: FlutterFlowTheme.of(context)
    //                                           .bodyMedium
    //                                           .override(
    //                                         fontFamily: 'Poppins',
    //                                         color: Color(0xFF848591),
    //                                         fontSize: 12.0,
    //                                         fontWeight: FontWeight.w300,
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                           ),
    //                           Expanded(
    //                             flex: 1,
    //                             child: InkWell(
    //                               onTap: () async {
    //                                 context.pushNamed('MessageMyVisitor');
    //                               },
    //                               child: Column(
    //                                 mainAxisSize: MainAxisSize.max,
    //                                 children: [
    //                                   ClipRRect(
    //                                     borderRadius: BorderRadius.circular(25.0),
    //                                     child: Image.asset(
    //                                       'assets/images/icon_myroom_56_(3).png',
    //                                       width: 56.0,
    //                                       height: 56.0,
    //                                       fit: BoxFit.cover,
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: EdgeInsetsDirectional.fromSTEB(
    //                                         0.0, 8.0, 0.0, 0.0),
    //                                     child: AutoSizeText(
    //                                       'Visitor',
    //                                       textAlign: TextAlign.center,
    //                                       style: FlutterFlowTheme.of(context)
    //                                           .bodyMedium
    //                                           .override(
    //                                         fontFamily: 'Poppins',
    //                                         color: Color(0xFF848591),
    //                                         fontSize: 12.0,
    //                                         fontWeight: FontWeight.w300,
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 ],
    //                               ),
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                   Expanded(
    //                     child: Padding(
    //                       padding:
    //                       EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
    //                       child: ListView.builder(
    //                           itemCount: _model.conversationList.length,
    //                           itemBuilder: (BuildContext context, int index) {
    //                             return Padding(
    //                               padding: EdgeInsetsDirectional.fromSTEB(
    //                                   0.0, 0.0, 0.0, 20.0),
    //                               child: InkWell(
    //                                 onTap: () async {
    //                                   Navigator.push(
    //                                       context,
    //                                       MaterialPageRoute(
    //                                         builder: (context) =>
    //                                             MessagePrivateWidget(
    //                                                 conversation: _model
    //                                                     .conversationList[index]),
    //                                       ));
    //                                   // context.pushNamed('MessagePrivate');
    //                                 },
    //                                 child: Container(
    //                                   width: double.infinity,
    //                                   decoration: BoxDecoration(
    //                                     color: Color(0xFF21222E),
    //                                     borderRadius: BorderRadius.circular(12.0),
    //                                   ),
    //                                   child: Padding(
    //                                     padding: EdgeInsetsDirectional.fromSTEB(
    //                                         4.0, 8.0, 8.0, 8.0),
    //                                     child: Row(
    //                                       mainAxisSize: MainAxisSize.max,
    //                                       children: [
    //                                         Container(
    //                                           width: 56.0,
    //                                           height: 56.0,
    //                                           decoration: BoxDecoration(
    //                                             color: Color(0x00FFFFFF),
    //                                           ),
    //                                           child: Stack(
    //                                             children: [
    //                                               Container(
    //                                                 width: 56.0,
    //                                                 height: 56.0,
    //                                                 clipBehavior: Clip.antiAlias,
    //                                                 decoration: BoxDecoration(
    //                                                   shape: BoxShape.circle,
    //                                                 ),
    //                                                 child: Image.network(
    //                                                   _model.conversationList[index]
    //                                                       .nimUser!.avatar ??
    //                                                       'https://picsum.photos/seed/48/600',
    //                                                   fit: BoxFit.cover,
    //                                                 ),
    //                                               ),
    //                                               Align(
    //                                                 alignment: AlignmentDirectional(
    //                                                     1.0, -1.0),
    //                                                 child: Container(
    //                                                   width: 16.0,
    //                                                   height: 16.0,
    //                                                   decoration: BoxDecoration(
    //                                                     color: Color(0xFFFF7979),
    //                                                     borderRadius:
    //                                                     BorderRadius.circular(
    //                                                         25.0),
    //                                                   ),
    //                                                   child: AutoSizeText(
    //                                                     '1',
    //                                                     textAlign: TextAlign.center,
    //                                                     style: FlutterFlowTheme.of(
    //                                                         context)
    //                                                         .bodyMedium
    //                                                         .override(
    //                                                       fontFamily: 'Poppins',
    //                                                       color:
    //                                                       FlutterFlowTheme.of(
    //                                                           context)
    //                                                           .white,
    //                                                       fontSize: 12.0,
    //                                                     ),
    //                                                   ),
    //                                                 ),
    //                                               ),
    //                                             ],
    //                                           ),
    //                                         ),
    //                                         Expanded(
    //                                           flex: 320,
    //                                           child: Container(
    //                                             width: double.infinity,
    //                                             decoration: BoxDecoration(
    //                                               color: Color(0x00FFFFFF),
    //                                             ),
    //                                             child: Padding(
    //                                               padding:
    //                                               EdgeInsetsDirectional.fromSTEB(
    //                                                   12.0, 0.0, 0.0, 0.0),
    //                                               child: Column(
    //                                                 mainAxisSize: MainAxisSize.max,
    //                                                 crossAxisAlignment:
    //                                                 CrossAxisAlignment.start,
    //                                                 children: [
    //                                                   Row(
    //                                                     mainAxisSize:
    //                                                     MainAxisSize.max,
    //                                                     mainAxisAlignment:
    //                                                     MainAxisAlignment
    //                                                         .spaceBetween,
    //                                                     children: [
    //                                                       Text(
    //                                                         _model.conversationList[index]
    //                                                             .nimUser!.nick??
    //                                                             'Seth Martinez',
    //                                                         textAlign:
    //                                                         TextAlign.center,
    //                                                         style:
    //                                                         FlutterFlowTheme.of(
    //                                                             context)
    //                                                             .bodyMedium
    //                                                             .override(
    //                                                           fontFamily:
    //                                                           'Poppins',
    //                                                           color: FlutterFlowTheme.of(
    //                                                               context)
    //                                                               .white,
    //                                                           fontSize: 14.0,
    //                                                         ),
    //                                                       ),
    //                                                       AutoSizeText(
    //                                                         formatMillseconds(_model
    //                                                             .conversationList[
    //                                                         index]
    //                                                             .session
    //                                                             .lastMessageTime ??
    //                                                             0) ??
    //                                                             '20:33',
    //                                                         textAlign:
    //                                                         TextAlign.center,
    //                                                         style:
    //                                                         FlutterFlowTheme.of(
    //                                                             context)
    //                                                             .bodyMedium
    //                                                             .override(
    //                                                           fontFamily:
    //                                                           'Poppins',
    //                                                           color: Color(
    //                                                               0xFF848591),
    //                                                           fontSize: 10.0,
    //                                                         ),
    //                                                       ),
    //                                                     ],
    //                                                   ),
    //                                                   AutoSizeText(
    //                                                     _model
    //                                                         .conversationList[
    //                                                     index]
    //                                                         .session
    //                                                         .lastMessageContent ??
    //                                                         'Hello World',
    //                                                     textAlign: TextAlign.center,
    //                                                     style: FlutterFlowTheme.of(
    //                                                         context)
    //                                                         .bodyMedium
    //                                                         .override(
    //                                                       fontFamily: 'Poppins',
    //                                                       color:
    //                                                       Color(0xFF848591),
    //                                                       fontSize: 12.0,
    //                                                     ),
    //                                                   ),
    //                                                 ],
    //                                               ),
    //                                             ),
    //                                           ),
    //                                         ),
    //                                       ],
    //                                     ),
    //                                   ),
    //                                 ),
    //                               ),
    //                             );
    //                           }),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //     },
    //   ));

    // return ChangeNotifierProvider<Page03Model>(
    //   create: (_) => Page03Model(),
    //   child: Consumer<Page03Model>(
    //       builder: (context, model, child) => Scaffold(
    //             key: scaffoldKey,
    //             backgroundColor: FlutterFlowTheme.of(context).thisBackground,
    //             appBar: AppBar(
    //               backgroundColor: FlutterFlowTheme.of(context).thisBackground,
    //               automaticallyImplyLeading: false,
    //               title: Text(
    //                 'Messages',
    //                 style: FlutterFlowTheme.of(context).headlineMedium.override(
    //                       fontFamily: 'Poppins',
    //                       color: Colors.white,
    //                       fontSize: 22.0,
    //                     ),
    //               ),
    //               actions: [],
    //               centerTitle: false,
    //               elevation: 2.0,
    //             ),
    //             body: SafeArea(
    //               child: GestureDetector(
    //                 onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
    //                 child: Padding(
    //                   padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
    //                   child: Column(
    //                     mainAxisSize: MainAxisSize.max,
    //                     children: [
    //                       Container(
    //                         width: double.infinity,
    //                         height: 130.0,
    //                         decoration: BoxDecoration(
    //                           color: Color(0x00FFFFFF),
    //                         ),
    //                         child: Padding(
    //                           padding:
    //                           EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
    //                           child: Row(
    //                             mainAxisSize: MainAxisSize.max,
    //                             mainAxisAlignment: MainAxisAlignment.center,
    //                             children: [
    //                               Expanded(
    //                                 flex: 1,
    //                                 child: InkWell(
    //                                   onTap: () async {
    //                                     context.pushNamed('HomePage');
    //                                   },
    //                                   child: Column(
    //                                     mainAxisSize: MainAxisSize.max,
    //                                     children: [
    //                                       ClipRRect(
    //                                         borderRadius: BorderRadius.circular(25.0),
    //                                         child: Image.asset(
    //                                           'assets/images/icon_myroom_56.png',
    //                                           width: 56.0,
    //                                           height: 56.0,
    //                                           fit: BoxFit.cover,
    //                                         ),
    //                                       ),
    //                                       Padding(
    //                                         padding: EdgeInsetsDirectional.fromSTEB(
    //                                             0.0, 8.0, 0.0, 0.0),
    //                                         child: AutoSizeText(
    //                                           'My room',
    //                                           textAlign: TextAlign.center,
    //                                           style: FlutterFlowTheme.of(context)
    //                                               .bodyMedium
    //                                               .override(
    //                                             fontFamily: 'Poppins',
    //                                             color: Color(0xFF848591),
    //                                             fontSize: 12.0,
    //                                             fontWeight: FontWeight.w300,
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ],
    //                                   ),
    //                                 ),
    //                               ),
    //                               Expanded(
    //                                 flex: 1,
    //                                 child: InkWell(
    //                                   onTap: () async {
    //                                     context.pushNamed('MessageSystemNotion');
    //                                   },
    //                                   child: Column(
    //                                     mainAxisSize: MainAxisSize.max,
    //                                     children: [
    //                                       ClipRRect(
    //                                         borderRadius: BorderRadius.circular(25.0),
    //                                         child: Image.asset(
    //                                           'assets/images/icon_myroom_56_(1).png',
    //                                           width: 56.0,
    //                                           height: 56.0,
    //                                           fit: BoxFit.cover,
    //                                         ),
    //                                       ),
    //                                       Padding(
    //                                         padding: EdgeInsetsDirectional.fromSTEB(
    //                                             0.0, 8.0, 0.0, 0.0),
    //                                         child: AutoSizeText(
    //                                           'System Notion',
    //                                           textAlign: TextAlign.center,
    //                                           maxLines: 2,
    //                                           style: FlutterFlowTheme.of(context)
    //                                               .bodyMedium
    //                                               .override(
    //                                             fontFamily: 'Poppins',
    //                                             color: Color(0xFF848591),
    //                                             fontSize: 12.0,
    //                                             fontWeight: FontWeight.w300,
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ],
    //                                   ),
    //                                 ),
    //                               ),
    //                               Expanded(
    //                                 flex: 1,
    //                                 child: InkWell(
    //                                   onTap: () async {
    //                                     context.pushNamed('MessageNew_Following');
    //                                   },
    //                                   child: Column(
    //                                     mainAxisSize: MainAxisSize.max,
    //                                     children: [
    //                                       ClipRRect(
    //                                         borderRadius: BorderRadius.circular(25.0),
    //                                         child: Image.asset(
    //                                           'assets/images/icon_myroom_56_(2).png',
    //                                           width: 56.0,
    //                                           height: 56.0,
    //                                           fit: BoxFit.cover,
    //                                         ),
    //                                       ),
    //                                       Padding(
    //                                         padding: EdgeInsetsDirectional.fromSTEB(
    //                                             0.0, 8.0, 0.0, 0.0),
    //                                         child: AutoSizeText(
    //                                           'Follow',
    //                                           textAlign: TextAlign.center,
    //                                           style: FlutterFlowTheme.of(context)
    //                                               .bodyMedium
    //                                               .override(
    //                                             fontFamily: 'Poppins',
    //                                             color: Color(0xFF848591),
    //                                             fontSize: 12.0,
    //                                             fontWeight: FontWeight.w300,
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ],
    //                                   ),
    //                                 ),
    //                               ),
    //                               Expanded(
    //                                 flex: 1,
    //                                 child: InkWell(
    //                                   onTap: () async {
    //                                     context.pushNamed('MessageMyVisitor');
    //                                   },
    //                                   child: Column(
    //                                     mainAxisSize: MainAxisSize.max,
    //                                     children: [
    //                                       ClipRRect(
    //                                         borderRadius: BorderRadius.circular(25.0),
    //                                         child: Image.asset(
    //                                           'assets/images/icon_myroom_56_(3).png',
    //                                           width: 56.0,
    //                                           height: 56.0,
    //                                           fit: BoxFit.cover,
    //                                         ),
    //                                       ),
    //                                       Padding(
    //                                         padding: EdgeInsetsDirectional.fromSTEB(
    //                                             0.0, 8.0, 0.0, 0.0),
    //                                         child: AutoSizeText(
    //                                           'Visitor',
    //                                           textAlign: TextAlign.center,
    //                                           style: FlutterFlowTheme.of(context)
    //                                               .bodyMedium
    //                                               .override(
    //                                             fontFamily: 'Poppins',
    //                                             color: Color(0xFF848591),
    //                                             fontSize: 12.0,
    //                                             fontWeight: FontWeight.w300,
    //                                           ),
    //                                         ),
    //                                       ),
    //                                     ],
    //                                   ),
    //                                 ),
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                       ),
    //                       Expanded(
    //                         child: Padding(
    //                           padding:
    //                           EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
    //                           child: ListView.builder(
    //                               itemCount:
    //                               Provider.of<Page03Model>(context, listen: false)
    //                                   .conversationList
    //                                   .length,
    //                               itemBuilder: (BuildContext context, int index) {
    //                                 return Padding(
    //                                   padding: EdgeInsetsDirectional.fromSTEB(
    //                                       0.0, 0.0, 0.0, 20.0),
    //                                   child: InkWell(
    //                                     onTap: () async {
    //                                       Navigator.push(
    //                                           context,
    //                                           MaterialPageRoute(
    //                                             builder: (context) =>
    //                                                 MessagePrivateWidget(
    //                                                     conversation: Provider.of<Page03Model>(context, listen: false)
    //                                                         .conversationList[index]),
    //                                           ));
    //                                       // context.pushNamed('MessagePrivate');
    //                                     },
    //                                     child: Container(
    //                                       width: double.infinity,
    //                                       decoration: BoxDecoration(
    //                                         color: Color(0xFF21222E),
    //                                         borderRadius: BorderRadius.circular(12.0),
    //                                       ),
    //                                       child: Padding(
    //                                         padding: EdgeInsetsDirectional.fromSTEB(
    //                                             4.0, 8.0, 8.0, 8.0),
    //                                         child: Row(
    //                                           mainAxisSize: MainAxisSize.max,
    //                                           children: [
    //                                             Container(
    //                                               width: 56.0,
    //                                               height: 56.0,
    //                                               decoration: BoxDecoration(
    //                                                 color: Color(0x00FFFFFF),
    //                                               ),
    //                                               child: Stack(
    //                                                 children: [
    //                                                   Container(
    //                                                     width: 56.0,
    //                                                     height: 56.0,
    //                                                     clipBehavior: Clip.antiAlias,
    //                                                     decoration: BoxDecoration(
    //                                                       shape: BoxShape.circle,
    //                                                     ),
    //                                                     child: Image.network(
    //                                                       Provider.of<Page03Model>(context, listen: false).conversationList[index]
    //                                                           .nimUser!.avatar ??
    //                                                           'https://picsum.photos/seed/48/600',
    //                                                       fit: BoxFit.cover,
    //                                                     ),
    //                                                   ),
    //                                                   Align(
    //                                                     alignment: AlignmentDirectional(
    //                                                         1.0, -1.0),
    //                                                     child: Container(
    //                                                       width: 16.0,
    //                                                       height: 16.0,
    //                                                       decoration: BoxDecoration(
    //                                                         color: Color(0xFFFF7979),
    //                                                         borderRadius:
    //                                                         BorderRadius.circular(
    //                                                             25.0),
    //                                                       ),
    //                                                       child: AutoSizeText(
    //                                                         '1',
    //                                                         textAlign: TextAlign.center,
    //                                                         style: FlutterFlowTheme.of(
    //                                                             context)
    //                                                             .bodyMedium
    //                                                             .override(
    //                                                           fontFamily: 'Poppins',
    //                                                           color: FlutterFlowTheme
    //                                                               .of(context)
    //                                                               .white,
    //                                                           fontSize: 12.0,
    //                                                         ),
    //                                                       ),
    //                                                     ),
    //                                                   ),
    //                                                 ],
    //                                               ),
    //                                             ),
    //                                             Expanded(
    //                                               flex: 320,
    //                                               child: Container(
    //                                                 width: double.infinity,
    //                                                 decoration: BoxDecoration(
    //                                                   color: Color(0x00FFFFFF),
    //                                                 ),
    //                                                 child: Padding(
    //                                                   padding: EdgeInsetsDirectional
    //                                                       .fromSTEB(
    //                                                       12.0, 0.0, 0.0, 0.0),
    //                                                   child: Column(
    //                                                     mainAxisSize: MainAxisSize.max,
    //                                                     crossAxisAlignment:
    //                                                     CrossAxisAlignment.start,
    //                                                     children: [
    //                                                       Row(
    //                                                         mainAxisSize:
    //                                                         MainAxisSize.max,
    //                                                         mainAxisAlignment:
    //                                                         MainAxisAlignment
    //                                                             .spaceBetween,
    //                                                         children: [
    //                                                           Text(
    //                                                             _model
    //                                                                 .conversationList[
    //                                                             index]
    //                                                                 .nimUser!
    //                                                                 .nick ??
    //                                                                 'Seth Martinez',
    //                                                             textAlign:
    //                                                             TextAlign.center,
    //                                                             style:
    //                                                             FlutterFlowTheme.of(
    //                                                                 context)
    //                                                                 .bodyMedium
    //                                                                 .override(
    //                                                               fontFamily:
    //                                                               'Poppins',
    //                                                               color: FlutterFlowTheme.of(
    //                                                                   context)
    //                                                                   .white,
    //                                                               fontSize:
    //                                                               14.0,
    //                                                             ),
    //                                                           ),
    //                                                           AutoSizeText(
    //                                                             formatMillseconds(_model
    //                                                                 .conversationList[
    //                                                             index]
    //                                                                 .session
    //                                                                 .lastMessageTime ??
    //                                                                 0) ??
    //                                                                 '20:33',
    //                                                             textAlign:
    //                                                             TextAlign.center,
    //                                                             style: FlutterFlowTheme
    //                                                                 .of(context)
    //                                                                 .bodyMedium
    //                                                                 .override(
    //                                                               fontFamily:
    //                                                               'Poppins',
    //                                                               color: Color(
    //                                                                   0xFF848591),
    //                                                               fontSize: 10.0,
    //                                                             ),
    //                                                           ),
    //                                                         ],
    //                                                       ),
    //                                                       AutoSizeText(
    //                                                         _model
    //                                                             .conversationList[
    //                                                         index]
    //                                                             .session
    //                                                             .lastMessageContent ??
    //                                                             'Hello World',
    //                                                         textAlign: TextAlign.center,
    //                                                         style: FlutterFlowTheme.of(
    //                                                             context)
    //                                                             .bodyMedium
    //                                                             .override(
    //                                                           fontFamily: 'Poppins',
    //                                                           color:
    //                                                           Color(0xFF848591),
    //                                                           fontSize: 12.0,
    //                                                         ),
    //                                                       ),
    //                                                     ],
    //                                                   ),
    //                                                 ),
    //                                               ),
    //                                             ),
    //                                           ],
    //                                         ),
    //                                       ),
    //                                     ),
    //                                   ),
    //                                 );
    //                               })
    //                         ),
    //                       )
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           )),
    // );
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).thisBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).thisBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'Messages',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22.0,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: 130.0,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () async {
                              context.pushNamed('HomePage');
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Image.asset(
                                    'assets/images/icon_myroom_56.png',
                                    width: 56.0,
                                    height: 56.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: AutoSizeText(
                                    'My room',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF848591),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () async {
                              context.pushNamed('MessageSystemNotion');
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Image.asset(
                                    'assets/images/icon_myroom_56_(1).png',
                                    width: 56.0,
                                    height: 56.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: AutoSizeText(
                                    'System Notion',
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF848591),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () async {
                              context.pushNamed('MessageNew_Following');
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Image.asset(
                                    'assets/images/icon_myroom_56_(2).png',
                                    width: 56.0,
                                    height: 56.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: AutoSizeText(
                                    'Follow',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF848591),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () async {
                              context.pushNamed('MessageMyVisitor');
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25.0),
                                  child: Image.asset(
                                    'assets/images/icon_myroom_56_(3).png',
                                    width: 56.0,
                                    height: 56.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 8.0, 0.0, 0.0),
                                  child: AutoSizeText(
                                    'Visitor',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF848591),
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300,
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
                Expanded(
                  child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: ListView.builder(
                          itemCount: _model.conversationList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return _model.conversationList[index].nimUser ==
                                    null
                                ? Container()
                                : Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 20.0),
                                    child: InkWell(
                                      onTap: () async {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  MessagePrivateWidget(
                                                      conversation: _model
                                                              .conversationList[
                                                          index]),
                                            )).then((value) {
                                          value
                                              ? _model.getSessionList()
                                              : null;
                                        });
                                        // context.pushNamed('MessagePrivate');
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xFF21222E),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 8.0, 8.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 56.0,
                                                height: 56.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00FFFFFF),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                      width: 56.0,
                                                      height: 56.0,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        _model
                                                                .conversationList[
                                                                    index]
                                                                .nimUser!
                                                                .avatar ??
                                                            'https://picsum.photos/seed/48/600',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    _model
                                                                .conversationList[
                                                                    index]
                                                                .session
                                                                .unreadCount !=
                                                            0
                                                        ? Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    1.0, -1.0),
                                                            child: Container(
                                                              width: 16.0,
                                                              height: 16.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFFF7979),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25.0),
                                                              ),
                                                              child:
                                                                  AutoSizeText(
                                                                _model
                                                                    .conversationList[
                                                                        index]
                                                                    .session
                                                                    .unreadCount
                                                                    .toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
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
                                                          )
                                                        : Container()
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                flex: 320,
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00FFFFFF),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              _model
                                                                      .conversationList[
                                                                          index]
                                                                      .nimUser!
                                                                      .nick ??
                                                                  'Seth Martinez',
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
                                                                        14.0,
                                                                  ),
                                                            ),
                                                            AutoSizeText(
                                                              formatMillseconds(_model
                                                                          .conversationList[
                                                                              index]
                                                                          .session
                                                                          .lastMessageTime ??
                                                                      0) ??
                                                                  '20:33',
                                                              textAlign:
                                                                  TextAlign
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
                                                                        10.0,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                        AutoSizeText(
                                                          _model
                                                                  .conversationList[
                                                                      index]
                                                                  .session
                                                                  .lastMessageContent ??
                                                              'Hello World',
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
                                                                fontSize: 12.0,
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
                                    ),
                                  );
                          })),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String formatMillseconds(int millSeconds, {List<String>? formats}) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(millSeconds);
    return formdatDateTime(date);
  }

  String formdatDateTime(DateTime date) {
    DateTime now = DateTime.now();
    if (now.isSameDay(date)) {
      return formatDate(date, [HH, ':', nn]);
    }
    if (now.isSameYear(date)) {
      return formatDate(date, [mm, '/', dd, HH, ':', nn]);
    }
    return formatDate(date, [yyyy, '/', mm, '/', dd, ' ', HH, ':', nn]);
  }
}
