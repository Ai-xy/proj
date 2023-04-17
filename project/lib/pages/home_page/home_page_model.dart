import 'dart:io';

import 'package:project/apis/device.dart';
import 'package:project/common/Config.dart';
import 'package:project/common/http_utils.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    saveDeviceInfo();
  }

  void dispose() {}

  /// 保存用户信息
  saveDeviceInfo() async {
    HttpUtils.post(
        Apis.saveDeviceInfo,
        {
          "appId": Config.appId,
          "appVersion": "1.0.0",
          "channel": "OFFICIAL",
          "deviceNo": "",
          "deviceType": Platform.isAndroid ? "AOS" : "IOS",
          "osType": "10.0.0",
          "osVersion": "10.0.0",
          "pushToken": "KLSD9372ID90239DJ28YTY753",
          "useSimCard": 0
        },
        success: (data) => {print("保存设备信息请求成功了---${data}")},
        fail: (data) => {print("保存设备信息请求出错了---${data}")});
  }

  /// Additional helper methods are added here.
}
