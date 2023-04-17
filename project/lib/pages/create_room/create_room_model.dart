import 'package:project/apis/room.dart';
import 'package:project/common/http_utils.dart';
import 'package:project/index.dart';
import 'package:project/models/Room.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateRoomModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for room_name widget.
  TextEditingController? roomNameController;
  String? Function(BuildContext, String?)? roomNameControllerValidator;
  // State field(s) for room_password widget.
  TextEditingController? roomPasswordController;
  String? Function(BuildContext, String?)? roomPasswordControllerValidator;
  // State field(s) for shortBio widget.
  TextEditingController? shortBioController;
  String? Function(BuildContext, String?)? shortBioControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    roomNameController?.dispose();
    roomPasswordController?.dispose();
    shortBioController?.dispose();
  }

  createRoom(BuildContext context) async {
    RoomResult roomResult;
    print(roomPasswordController.text + " / " + roomNameController.text);
    HttpUtils.post(ApisRoom.createRoom, {
      "coverImg":
          "https://ts3.cn.mm.bing.net/th?id=ORMS.905777ac007a9d2b502b969bbb477dc8&pid=Wdp&w=300&h=156&qlt=90&c=1&rs=1&dpr=1&p=0",
      "password": roomPasswordController.text,
      "roomName": roomNameController.text,
      "roomSynopsis": "~~~~~",
      "tagId": 1
    }, success: (data) async {
      print('房间创建成功!');
      print(data);
      roomResult = RoomResult.fromJson(data);
      print(roomResult.roomName);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => RoomWidget(roomResult: roomResult)));
    }, fail: (data) {
      print('房间创建失败!');
    });
  }

  findRoomListByTag() async {
    print('获取房间列表');
    HttpUtils.post(ApisRoom.findRoomListByTag, {"searchValue": ""},
        success: (data) {
      print(data);
      print("获取房间列表成功");
    }, fail: (data) {
      print(data);
      print("获取房间列表失败");
    });
  }

  /// Additional helper methods are added here.
}
