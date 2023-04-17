import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'personal_setting_model.dart';
export 'personal_setting_model.dart';

class PersonalSettingWidget extends StatefulWidget {
  const PersonalSettingWidget({Key? key}) : super(key: key);

  @override
  _PersonalSettingWidgetState createState() => _PersonalSettingWidgetState();
}

class _PersonalSettingWidgetState extends State<PersonalSettingWidget> {
  late PersonalSettingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PersonalSettingModel());
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
          'Settings',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).white,
                fontSize: 18.0,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
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
                                  'User Agreement',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color:
                                            FlutterFlowTheme.of(context).white,
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
                                  'Privacy Agreenment',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color:
                                            FlutterFlowTheme.of(context).white,
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
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                child: Container(
                  width: 314.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).bottomColor,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Delete Account',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).pecialColor,
                            lineHeight: 1.0,
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
  }
}
