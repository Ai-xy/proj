import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'functions_model.dart';
export 'functions_model.dart';

class FunctionsWidget extends StatefulWidget {
  const FunctionsWidget({Key? key}) : super(key: key);

  @override
  _FunctionsWidgetState createState() => _FunctionsWidgetState();
}

class _FunctionsWidgetState extends State<FunctionsWidget> {
  late FunctionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FunctionsModel());
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
      height: 242.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).thisBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
        child: GridView(
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            childAspectRatio: 1.0,
          ),
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Container(
                      width: 48.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).bottomColor,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Image.asset(
                            'assets/images/icon_offmic_32@2x_(4)_(1).png',
                            width: 30.0,
                            height: 30.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                    child: Text(
                      'Clear Screen',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).white,
                            fontSize: 14.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).bottomColor,
                          shape: BoxShape.circle,
                        ),
                        alignment:
                            AlignmentDirectional(0.050000000000000044, 0.0),
                        child: FaIcon(
                          FontAwesomeIcons.shareSquare,
                          color: FlutterFlowTheme.of(context).white,
                          size: 16.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 0.0),
                    child: Text(
                      'Share',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).white,
                            fontSize: 14.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
