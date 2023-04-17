import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'room_tap_myself_head_model.dart';
export 'room_tap_myself_head_model.dart';

class RoomTapMyselfHeadWidget extends StatefulWidget {
  const RoomTapMyselfHeadWidget({Key? key}) : super(key: key);

  @override
  _RoomTapMyselfHeadWidgetState createState() =>
      _RoomTapMyselfHeadWidgetState();
}

class _RoomTapMyselfHeadWidgetState extends State<RoomTapMyselfHeadWidget> {
  late RoomTapMyselfHeadModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomTapMyselfHeadModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
            height: 280.0,
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
                                'Jay Wells',
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
                            'ID:514161811',
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/images/icon_offmic_32@2x_(3).png',
                                width: 32.0,
                                height: 32.0,
                                fit: BoxFit.cover,
                              ),
                              Image.asset(
                                'assets/images/icon_offmic_32@2x_(5).png',
                                width: 32.0,
                                height: 32.0,
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
                        'https://picsum.photos/seed/654/600',
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
}
