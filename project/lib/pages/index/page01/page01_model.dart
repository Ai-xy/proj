import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:project/apis/room.dart';
import 'package:project/common/Config.dart';
import 'package:project/common/http_utils.dart';
import 'package:project/models/Room.dart';
import '../../../apis/device.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class Page01Model extends FlutterFlowModel{
  /// Initialization and disposal methods.

  Page01Model() {
    saveDeviceInfo();
  }

  List dataList = [];
  List<RoomResult> roomList = [];
  RoomResult? room;

  // 判断房间是否已经最小化
  bool isMinimized = false;

  void initState(BuildContext context) {
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
        success: (data) async {
          print("保存设备信息请求成功了---${data}");
          await findRoomListByTag();
        },
        fail: (data) => {print("保存设备信息请求出错了---${data}")});
  }

  // 获取房间列表
  Future findRoomListByTag() async {
    print('获取房间列表');
    HttpUtils.post(ApisRoom.findRoomListByTag, {"searchValue": ""},
        success: (data) {
      roomList = [];
      print('获取data');
      print(data);
      dataList = data;

      print("房间列表长度 dataList.length:" + dataList.length.toString());
      print("房间列表: ");
      print(dataList);

      print("第一个房间: ");
      print("获取房间列表成功");

      for (int i = 0; i < dataList.length; i++) {
        roomList.add(RoomResult.fromJson(dataList[i]));
        print(roomList[i].roomName);
      }
      onUpdate();
    }, fail: (data) {
      print(data);
      print("获取房间列表失败");
    });
  }

}
