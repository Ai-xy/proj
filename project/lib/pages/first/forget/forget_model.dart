import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgetModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '*Please enter the correct email format';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for password_again widget.
  TextEditingController? passwordAgainController;
  late bool passwordAgainVisibility;
  String? Function(BuildContext, String?)? passwordAgainControllerValidator;
  String? _passwordAgainControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return '*The two password are inconsistent';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailAddressControllerValidator = _emailAddressControllerValidator;
    passwordVisibility = false;
    passwordAgainVisibility = false;
    passwordAgainControllerValidator = _passwordAgainControllerValidator;
  }

  void dispose() {
    emailAddressController?.dispose();
    passwordController?.dispose();
    passwordAgainController?.dispose();
  }

  /// Additional helper methods are added here.

}
