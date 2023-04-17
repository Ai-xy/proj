import '/components/room_invite_mic_widget.dart';
import '/components/room_set_black_widget.dart';
import '/components/room_set_manager_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'room_tap_not_mic_model.dart';
export 'room_tap_not_mic_model.dart';

class RoomTapNotMicWidget extends StatefulWidget {
  const RoomTapNotMicWidget({Key? key}) : super(key: key);

  @override
  _RoomTapNotMicWidgetState createState() => _RoomTapNotMicWidgetState();
}

class _RoomTapNotMicWidgetState extends State<RoomTapNotMicWidget> {
  late RoomTapNotMicModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomTapNotMicModel());
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
            height: 350.0,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Color(0x80000000),
                                    isDismissible: false,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: RoomSetBlackWidget(),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                                child: Image.asset(
                                  'assets/images/icon_offmic_32_2@2x.png',
                                  width: 32.0,
                                  height: 32.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Color(0x7F000000),
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: RoomInviteMicWidget(),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                                child: Image.asset(
                                  'assets/images/icon_offmic_32@2x.png',
                                  width: 32.0,
                                  height: 32.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Image.asset(
                                'assets/images/icon_offmic_32@2x_(5).png',
                                width: 32.0,
                                height: 32.0,
                                fit: BoxFit.cover,
                              ),
                              InkWell(
                                onTap: () async {
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Color(0x80000000),
                                    isDismissible: false,
                                    enableDrag: false,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: RoomSetManagerWidget(),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                },
                                child: Image.asset(
                                  'assets/images/icon_offmic_32_3@2x_(2).png',
                                  width: 32.0,
                                  height: 32.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Image.asset(
                                'assets/images/icon_offmic_32_4@2x_(2).png',
                                width: 32.0,
                                height: 32.0,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: Container(
                                  width: 140.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xE7FFD500),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'Follow',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                              Container(
                                width: 140.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F1F3),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    'Say hi',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ),
                              ),
                              Image.asset(
                                'assets/images/icon_gift_40@2x_(1).png',
                                width: 40.0,
                                height: 40.0,
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
