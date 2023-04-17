import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'email_login_model.dart';
export 'email_login_model.dart';

class EmailLoginWidget extends StatefulWidget {
  const EmailLoginWidget({Key? key}) : super(key: key);

  @override
  _EmailLoginWidgetState createState() => _EmailLoginWidgetState();
}

class _EmailLoginWidgetState extends State<EmailLoginWidget> {
  late EmailLoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmailLoginModel());

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
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 44.0, 0.0, 0.0),
              child: InkWell(
                onTap: () async {
                  context.safePop();
                },
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: FlutterFlowTheme.of(context).white,
                  size: 24.0,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 10,
                    child: Padding(
                      padding:
                      EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 30.0, 0.0, 30.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sign In',
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
                                      color: FlutterFlowTheme.of(context)
                                          .white,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 294.0,
                                      child: TextFormField(
                                        controller:
                                        _model.emailAddressController,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText:
                                          'Enter your account number        ',
                                          hintStyle:
                                          FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF757682),
                                            fontSize: 12.0,
                                            fontWeight:
                                            FontWeight.normal,
                                            lineHeight: 2.0,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFF757682),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(25.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(25.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(25.0),
                                          ),
                                          focusedErrorBorder:
                                          OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(25.0),
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
                                          color:
                                          FlutterFlowTheme.of(context)
                                              .white,
                                        ),
                                        validator: _model
                                            .emailAddressControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 24.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: 294.0,
                                        child: TextFormField(
                                          controller: _model.passwordController,
                                          obscureText:
                                          !_model.passwordVisibility,
                                          decoration: InputDecoration(
                                            hintText: 'Enter your password',
                                            hintStyle:
                                            FlutterFlowTheme.of(context)
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
                                              borderRadius:
                                              BorderRadius.circular(25.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(25.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(25.0),
                                            ),
                                            focusedErrorBorder:
                                            OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(25.0),
                                            ),
                                            filled: true,
                                            fillColor: Color(0x00FFFFFF),
                                            contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                30.0, 18.0, 69.0, 18.0),
                                            suffixIcon: InkWell(
                                              onTap: () => setState(
                                                    () => _model
                                                    .passwordVisibility =
                                                !_model.passwordVisibility,
                                              ),
                                              focusNode: FocusNode(
                                                  skipTraversal: true),
                                              child: Icon(
                                                _model.passwordVisibility
                                                    ? Icons.visibility_outlined
                                                    : Icons
                                                    .visibility_off_outlined,
                                                color:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                                size: 22.0,
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Poppins',
                                            color:
                                            FlutterFlowTheme.of(context)
                                                .white,
                                          ),
                                          validator: _model
                                              .passwordControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.emailLogin(context);
                                },
                                text: 'Sign In',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFFFD500),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 16.0,
                                  ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed('forget');
                                      },
                                      text: 'Forgot Password',
                                      options: FFButtonOptions(
                                        height: 18.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFFFD500),
                                          fontSize: 14.0,
                                        ),
                                        elevation: 2.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                        BorderRadius.circular(25.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed('email_register');
                                      },
                                      text: 'Register',
                                      options: FFButtonOptions(
                                        height: 18.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFFFD500),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      height: 70.0,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
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
                                    color:
                                    FlutterFlowTheme.of(context).white,
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
                                    color:
                                    FlutterFlowTheme.of(context).white,
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
          ],
        ),
      ),
    );
  }
}
