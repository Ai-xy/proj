import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
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

class LoginPageModel extends FlutterFlowModel {
  /// Initialization and disposal methods.

  final BuildContext context;
  LoginPageModel(this.context);

  String? deviceId;

  void initState(BuildContext context) {}

  void dispose() {}

  /// 获取用户设备id
  getDeviceId() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      deviceId = androidInfo.id;
      print("设备id：$deviceId");
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      deviceId = iosInfo.identifierForVendor;
    }
  }

  /// 快速注册
  quickRegistration() async {
    await getDeviceId();
    User? userData;
    HttpUtils.post(Apis.quickLogin, {"deviceId": deviceId},
        success: (data) async {
      print("快速注册返回 ");
      print(data);
      userData = User.fromJson(data);
      print("token: ${userData!.token}");
      print("userId:${userData!.userId}");
      SpUtil.putString(Config.token, '${userData!.token}');
      SpUtil.putString(Config.userId, '${userData!.userId}');
      // SpUtil.putString(Config.imToken, '${userData?.imToken}'),
      // SpUtil.putString(Config.yxAccid, '${userData?.yxAccid}'),
      SpUtil.putObject(Config.userInfo, userData!);
      context.pushNamed('Registration');
    }, fail: (data) {
      print("快速注册返回" + data.toString());
    });
  }

  /// Additional helper methods are added here.
}
