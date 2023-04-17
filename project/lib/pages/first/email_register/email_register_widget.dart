import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'email_register_model.dart';
export 'email_register_model.dart';

class EmailRegisterWidget extends StatefulWidget {
  const EmailRegisterWidget({Key? key}) : super(key: key);

  @override
  _EmailRegisterWidgetState createState() => _EmailRegisterWidgetState();
}

class _EmailRegisterWidgetState extends State<EmailRegisterWidget> {
  late EmailRegisterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailRegisterModel());

    _model.emailAddressController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
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

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
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
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Register',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                              fontFamily: 'Work Sans',
                              color: Color(0xFFFFD500),
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Text(
                              'To a mailbox',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 294.0,
                              child: TextFormField(
                                controller: _model.emailAddressController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Enter your email here',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF757682),
                                    fontSize: 12.0,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF757682),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0x00FFFFFF),
                                  contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(
                                      30.0, 18.0, 69.0, 18.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).white,
                                ),
                                validator: _model
                                    .emailAddressControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 294.0,
                              child: TextFormField(
                                controller: _model.passwordController,
                                obscureText: !_model.passwordVisibility,
                                decoration: InputDecoration(
                                  hintText: 'Enter your password here',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF757682),
                                    fontSize: 12.0,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF757682),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0x00FFFFFF),
                                  contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(
                                      30.0, 18.0, 69.0, 18.0),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                          () => _model.passwordVisibility =
                                      !_model.passwordVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.passwordVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 22.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).white,
                                ),
                                validator: _model.passwordControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button-Login pressed ...');
                          _model.register(context);
                        },
                        text: 'Register',
                        options: FFButtonOptions(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              2.0, 2.0, 2.0, 2.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFFFD500),
                          textStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                          elevation: 1.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 24.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              width: 24.0,
                              height: 24.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/icon_check_sel@2x.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 24.0,
                            height: 24.0,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              width: 24.0,
                              height: 24.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/icon_check_sel@2x_(1)_(1).png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                        EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Terms of Service',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).white,
                                fontSize: 12.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  3.0, 0.0, 3.0, 0.0),
                              child: Text(
                                '&',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF848591),
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            Text(
                              'Privacy Polic',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).white,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
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
    );
  }
}
