import 'package:project/apis/login.dart';
import 'package:project/common/Config.dart';
import 'package:project/common/common_util.dart';
import 'package:project/common/http_utils.dart';
import 'package:project/models/User.dart';
import 'package:sp_util/sp_util.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmailRegisterModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  void dispose() {
    emailAddressController?.dispose();
    passwordController?.dispose();
  }


  register(BuildContext context) async {
    User user;
    HttpUtils.post(Apis.emailLogin, {
      "email": emailAddressController.text,
      "password": CommonUtil.generateMd5(
          CommonUtil.generateMd5(passwordController.text + Config.appId)),
    }, success: (data) async {
      print('email注册成功');
      user = User.fromJson(data);
      print('${user.token}');
      // SpUtil.putString(Config.token, '${user.token}');
      // SpUtil.putString(Config.userId, '${user.userId}');
      // // SpUtil.putString(Config.imToken, '${user?.imToken}'),
      // // SpUtil.putString(Config.yxAccid, '${user?.yxAccid}'),
      // SpUtil.putObject(Config.userInfo, user);
      //网易云信初始化
      context.pushNamed('Registration');
    }, fail: (data) {
      print("邮箱登录失败！");
    });
  }


  /// Additional helper methods are added here.

}
