import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'expression_model.dart';
export 'expression_model.dart';

class ExpressionWidget extends StatefulWidget {
  const ExpressionWidget({Key? key}) : super(key: key);

  @override
  _ExpressionWidgetState createState() => _ExpressionWidgetState();
}

class _ExpressionWidgetState extends State<ExpressionWidget> {
  late ExpressionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExpressionModel());
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
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
        child: GridView(
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 30.0,
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
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 6.0, 10.0, 4.0),
                    child: Image.network(
                      'https://picsum.photos/seed/388/600',
                      width: 56.0,
                      height: 56.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'Effre',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).textColor,
                          fontSize: 14.0,
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
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 6.0, 10.0, 4.0),
                    child: Image.network(
                      'https://picsum.photos/seed/388/600',
                      width: 56.0,
                      height: 56.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'Effre',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).textColor,
                          fontSize: 14.0,
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
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 6.0, 10.0, 4.0),
                    child: Image.network(
                      'https://picsum.photos/seed/388/600',
                      width: 56.0,
                      height: 56.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'Effre',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).textColor,
                          fontSize: 14.0,
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
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 6.0, 10.0, 4.0),
                    child: Image.network(
                      'https://picsum.photos/seed/388/600',
                      width: 56.0,
                      height: 56.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    'Effre',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).textColor,
                          fontSize: 14.0,
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
