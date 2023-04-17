import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'room_setting_model.dart';
export 'room_setting_model.dart';

class RoomSettingWidget extends StatefulWidget {
  const RoomSettingWidget({Key? key}) : super(key: key);

  @override
  _RoomSettingWidgetState createState() => _RoomSettingWidgetState();
}

class _RoomSettingWidgetState extends State<RoomSettingWidget> {
  late RoomSettingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomSettingModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    _model.textController3 ??= TextEditingController();
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
          'Room settings',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).white,
                fontSize: 18.0,
              ),
        ),
        actions: [
          Container(
            width: 60.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).thisBackground,
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              'Save',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Color(0xC0FFD500),
                    fontSize: 13.0,
                    lineHeight: 1.0,
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/726/600',
                                  width: 56.0,
                                  height: 48.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 18.0, 0.0, 18.0),
                                child: AutoSizeText(
                                  'Room cover settings',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: FlutterFlowTheme.of(context).textColor,
                            size: 24.0,
                          ),
                        ],
                      ),
                      Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: Color(0x11FFFFFF),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 17.0, 0.0, 17.0),
                            child: AutoSizeText(
                              'Name:',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 0.0, 0.0),
                              child: TextFormField(
                                controller: _model.textController1,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Boase\'s room',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        fontSize: 16.0,
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
                                          6.0, 0.0, 0.0, 0.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context).white,
                                    ),
                                textAlign: TextAlign.start,
                                validator: _model.textController1Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: Color(0x11FFFFFF),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 17.0, 0.0, 17.0),
                            child: AutoSizeText(
                              'Introduction:',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 0.0, 0.0),
                              child: TextFormField(
                                controller: _model.textController2,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Chat together...',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        fontSize: 16.0,
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
                                          6.0, 0.0, 0.0, 0.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context).white,
                                    ),
                                textAlign: TextAlign.start,
                                validator: _model.textController2Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: Color(0x11FFFFFF),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 17.0, 0.0, 17.0),
                            child: AutoSizeText(
                              'Password:',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.0, 0.0, 0.0, 0.0),
                              child: TextFormField(
                                controller: _model.textController3,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'javbsdihfges',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .textColor,
                                        fontSize: 16.0,
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
                                          6.0, 0.0, 0.0, 0.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context).white,
                                    ),
                                textAlign: TextAlign.start,
                                validator: _model.textController3Validator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: Color(0x11FFFFFF),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 17.0, 0.0, 17.0),
                            child: AutoSizeText(
                              'Enable charm value',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).white,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                          Switch(
                            value: _model.switchValue1 ??= true,
                            onChanged: (newValue) async {
                              setState(() => _model.switchValue1 = newValue!);
                            },
                          ),
                        ],
                      ),
                      Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: Color(0x11FFFFFF),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () async {
                    context.pushNamed('RoomNotification');
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 17.0, 0.0, 17.0),
                              child: AutoSizeText(
                                'Release notification',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context).white,
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: FlutterFlowTheme.of(context).textColor,
                              size: 24.0,
                            ),
                          ],
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
                InkWell(
                  onTap: () async {
                    context.pushNamed('RoomAdminSettings');
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 17.0, 0.0, 17.0),
                              child: AutoSizeText(
                                'Admins',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context).white,
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: FlutterFlowTheme.of(context).textColor,
                              size: 24.0,
                            ),
                          ],
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
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 17.0, 0.0, 17.0),
                            child: AutoSizeText(
                              'Blocklist',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).white,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: FlutterFlowTheme.of(context).textColor,
                            size: 24.0,
                          ),
                        ],
                      ),
                      Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: Color(0x11FFFFFF),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () async {
                    context.pushNamed('RoomForbiddenList');
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 17.0, 0.0, 17.0),
                              child: AutoSizeText(
                                'Forbidden List',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context).white,
                                      fontSize: 16.0,
                                    ),
                              ),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: FlutterFlowTheme.of(context).textColor,
                              size: 24.0,
                            ),
                          ],
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
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 17.0, 0.0, 17.0),
                            child: AutoSizeText(
                              ' ',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).white,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                          Switch(
                            value: _model.switchValue2 ??= true,
                            onChanged: (newValue) async {
                              setState(() => _model.switchValue2 = newValue!);
                            },
                          ),
                        ],
                      ),
                    ],
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
