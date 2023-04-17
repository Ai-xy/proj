import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_room_model.dart';
export 'create_room_model.dart';

class CreateRoomWidget extends StatefulWidget {
  const CreateRoomWidget({Key? key}) : super(key: key);

  @override
  _CreateRoomWidgetState createState() => _CreateRoomWidgetState();
}

class _CreateRoomWidgetState extends State<CreateRoomWidget> {
  late CreateRoomModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateRoomModel());

    _model.roomNameController ??= TextEditingController();
    _model.roomPasswordController ??= TextEditingController();
    _model.shortBioController ??= TextEditingController();
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
          'Invite User',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 108.0,
                            height: 98.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF21222E),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Icon(
                              Icons.add,
                              color: Color(0xFF757682),
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 40.0),
                            child: Text(
                              'Room cover settings',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).white,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            child: TextFormField(
                              controller: _model.roomNameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Room name：',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF757682),
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00D8D8D8),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 32.0, 20.0, 12.0),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              textAlign: TextAlign.start,
                              validator: _model.roomNameControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Divider(
                            height: 1.0,
                            thickness: 1.0,
                            indent: 36.0,
                            endIndent: 36.0,
                            color: FlutterFlowTheme.of(context).bottomColor,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 20.0, 16.0, 0.0),
                            child: TextFormField(
                              controller: _model.roomPasswordController,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Room password：',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF757682),
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00F1F4F8),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 32.0, 20.0, 12.0),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              textAlign: TextAlign.start,
                              keyboardType: TextInputType.emailAddress,
                              validator: _model.roomPasswordControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Divider(
                            height: 1.0,
                            thickness: 1.0,
                            indent: 36.0,
                            endIndent: 36.0,
                            color: FlutterFlowTheme.of(context).bottomColor,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 22.0, 0.0, 0.0),
                            child: Wrap(
                              spacing: 19.0,
                              runSpacing: 16.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 32.0,
                                  constraints: BoxConstraints(
                                    maxWidth: 154.0,
                                    maxHeight: 32.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFD500),
                                    borderRadius: BorderRadius.circular(13.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 8.0, 12.0, 8.0),
                                    child: AutoSizeText(
                                      'Popular',
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 14.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 32.0,
                                  constraints: BoxConstraints(
                                    maxWidth: 154.0,
                                    maxHeight: 32.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF21222E),
                                    borderRadius: BorderRadius.circular(13.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 5.0, 12.0, 5.0),
                                    child: AutoSizeText(
                                      'Popular',
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF757682),
                                            fontSize: 14.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 32.0,
                                  constraints: BoxConstraints(
                                    maxWidth: 154.0,
                                    maxHeight: 32.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF21222E),
                                    borderRadius: BorderRadius.circular(13.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 5.0, 12.0, 5.0),
                                    child: AutoSizeText(
                                      'Popular',
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF757682),
                                            fontSize: 14.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 32.0,
                                  constraints: BoxConstraints(
                                    maxWidth: 154.0,
                                    maxHeight: 32.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF21222E),
                                    borderRadius: BorderRadius.circular(13.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 5.0, 12.0, 5.0),
                                    child: AutoSizeText(
                                      'Popular',
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF757682),
                                            fontSize: 14.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 24.0, 24.0, 24.0),
                            child: Container(
                              width: double.infinity,
                              height: 105.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF21222E),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 12.0, 12.0, 12.0),
                                  child: TextFormField(
                                    controller: _model.shortBioController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Enter description here..',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodySmall,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00757682),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    textAlign: TextAlign.start,
                                    maxLines: 4,
                                    keyboardType: TextInputType.multiline,
                                    validator: _model
                                        .shortBioControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            41.0, 0.0, 41.0, 16.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            print('Button pressed ...');
                            await _model.createRoom(context);
                          },
                          text: 'Continue',
                          options: FFButtonOptions(
                            width: 294.0,
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
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Divider(
                      height: 5.0,
                      thickness: 5.0,
                      indent: 134.0,
                      endIndent: 134.0,
                      color: Color(0xFF21222E),
                    ),
                    Container(
                      width: double.infinity,
                      height: 10.0,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
