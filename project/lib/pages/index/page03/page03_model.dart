import 'package:nim_core/nim_core.dart';
import 'package:project/models/AppUserConversationModel.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Page03Model extends FlutterFlowModel {
  /// Initialization and disposal methods.

  Page03Model() {
    //getSessionList();
  }
  // 最近会话列表
  List<AppUserConversationModel> conversationList =
      <AppUserConversationModel>[];

  void initState(BuildContext context) {}

  void dispose() {}

  // 获取最近对话
  Future getSessionList() {
    print('获取最近对话');
    NimCore.instance.messageService.querySessionList(100).then((value) {
      print('$value');
      if (value.data is List<NIMSession>) {
        conversationList = (value.data as List<NIMSession>)
            .where((e) => e.sessionId != null.toString())
            .map((e) => AppUserConversationModel(session: e))
            .toList();
        return Future.forEach<AppUserConversationModel>(conversationList, (e) {
          return NimCore.instance.userService
              .getUserInfo(e.session.sessionId)
              .then((value) {
            if (value.data is NIMUser) {
              e.nimUser = value.data;
              onUpdate();
            }
          });
        });
      }
    });
    return Future.value();
  }

  /// Additional helper methods are added here.
}
