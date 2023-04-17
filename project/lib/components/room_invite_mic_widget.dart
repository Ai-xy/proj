import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'room_invite_mic_model.dart';
export 'room_invite_mic_model.dart';

class RoomInviteMicWidget extends StatefulWidget {
  const RoomInviteMicWidget({Key? key}) : super(key: key);

  @override
  _RoomInviteMicWidgetState createState() => _RoomInviteMicWidgetState();
}

class _RoomInviteMicWidgetState extends State<RoomInviteMicWidget> {
  late RoomInviteMicModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomInviteMicModel());
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
            alignment: AlignmentDirectional(0.0, 0.0),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
            child: Container(
              width: double.infinity,
              height: 250.0,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 42.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).thisBackground,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24.0, 0.0, 24.0, 16.0),
                                child: Text(
                                  'Set fusername] as Administrator?',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color:
                                            FlutterFlowTheme.of(context).white,
                                        fontSize: 14.0,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 114.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Confirm',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: 114.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .pecialColor,
                                        borderRadius:
                                            BorderRadius.circular(25.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Cancel',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
        ),
      ],
    );
  }
}
