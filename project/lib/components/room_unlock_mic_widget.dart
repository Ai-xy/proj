import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'room_unlock_mic_model.dart';
export 'room_unlock_mic_model.dart';

class RoomUnlockMicWidget extends StatefulWidget {
  const RoomUnlockMicWidget({Key? key}) : super(key: key);

  @override
  _RoomUnlockMicWidgetState createState() => _RoomUnlockMicWidgetState();
}

class _RoomUnlockMicWidgetState extends State<RoomUnlockMicWidget> {
  late RoomUnlockMicModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomUnlockMicModel());
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
            flex: 260,
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
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 176,
                    child: Container(
                      width: 100.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).thisBackground,
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      alignment:
                          AlignmentDirectional(0.0, 0.050000000000000044),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 0.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
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
                                      Text(
                                        'Uniock',
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
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 0.0, 30.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Unlock all',
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
                                  alignment: AlignmentDirectional(
                                      0.050000000000000044, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30.0, 0.0, 30.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
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
                  ),
                  Expanded(
                    flex: 45,
                    child: Container(
                      width: 100.0,
                      height: double.infinity,
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
            flex: 376,
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
}
