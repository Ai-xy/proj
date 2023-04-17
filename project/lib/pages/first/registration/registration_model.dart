import 'package:project/apis/login.dart';
import 'package:project/common/Config.dart';
import 'package:project/common/http_utils.dart';
import 'package:project/common/yx.dart';
import 'package:project/models/User.dart';
import 'package:sp_util/sp_util.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  final BuildContext context;
  RegistrationModel(this.context);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
  }

  // 保存用户接口
  saveUserInfo() async {
    User userData;
    print(textController2.text + textController1.text);
    HttpUtils.post(Apis.saveUserInfo, {
      "birthday": DateFormat('yyyy-MM-dd')
          .format(DateTime.now().add(const Duration(days: -365))),
      "countryId": "China",
      "gender": 0,
      "icon": "http://www.pic.com/pic.jpg",
      "nickname": textController1.text == '' ? "alice" : textController1.text,
    }, success: (data) async {
      print(data);
      print("保存用户接口请求成功");
      userData = User.fromJson(data);
      SpUtil.putObject(Config.userInfo, userData);
      await YxService().initYx(userData);
      context.pushNamed('page01');
    }, fail: (data) {
      print("保存用户接口请求失败");
      print(data);
      //context.pushNamed('Page01');
    });
  }

  /// Additional helper methods are added here.
}
