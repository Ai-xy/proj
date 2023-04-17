import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'room_set_black_model.dart';
export 'room_set_black_model.dart';

class RoomSetBlackWidget extends StatefulWidget {
  const RoomSetBlackWidget({Key? key}) : super(key: key);

  @override
  _RoomSetBlackWidgetState createState() => _RoomSetBlackWidgetState();
}

class _RoomSetBlackWidgetState extends State<RoomSetBlackWidget> {
  late RoomSetBlackModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomSetBlackModel());
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
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Container(
            width: 284.0,
            height: 176.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).thisBackground,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 16.0),
                  child: Text(
                    'Add [username] to the blacklist, and the user will be forced to leave the room',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).white,
                          fontSize: 14.0,
                        ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 114.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Confirm',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ),
                    Container(
                      width: 114.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).pecialColor,
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Cancel',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
