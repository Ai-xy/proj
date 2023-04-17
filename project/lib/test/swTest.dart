// import 'package:agora_rtc_engine/agora_rtc_engine.dart';
// import 'package:flutter/material.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:project/common/Config.dart';
//
// class MySwTest extends StatefulWidget {
//   const MySwTest({Key? key}) : super(key: key);
//
//   @override
//   _MySwTestState createState() => _MySwTestState();
// }
// class _MySwTestState extends State<MySwTest> {
//   int? _remoteUid;
//   bool _localUserJoined = false;
//   late RtcEngine _engine;
//
//   @override
//   void initState() {
//     super.initState();
//     initAgora();
//   }
//
//   // 初始化应用
//   Future<void> initAgora() async {
//     // 获取权限
//     await [Permission.microphone].request();
//
//     // 创建 RtcEngine
//     _engine = await createAgoraRtcEngine();
//
//     // 初始化 RtcEngine，设置频道场景为直播场景
//     await _engine.initialize(const RtcEngineContext(
//       appId: Config.swAppId,
//       channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
//     ));
//
//     _engine.registerEventHandler(
//       RtcEngineEventHandler(
//         onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
//           debugPrint("local user ${connection.localUid} joined");
//           setState(() {
//             _localUserJoined = true;
//           });
//         },
//         onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
//           debugPrint("remote user $remoteUid joined");
//           setState(() {
//             _remoteUid = remoteUid;
//           });
//         },
//         onUserOffline: (RtcConnection connection, int remoteUid,
//             UserOfflineReasonType reason) {
//           debugPrint("remote user $remoteUid left channel");
//           setState(() {
//             _remoteUid = null;
//           });
//         },
//       ),
//     );
//
//     // 加入频道，设置用户角色为主播
//     await _engine.joinChannel(
//       token: token,
//       channelId: channel,
//       options: const ChannelMediaOptions(
//           clientRoleType: ClientRoleType.clientRoleBroadcaster),
//       uid: 0,
//     );
//   }
//
//   // 构建 UI
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Agora Voice Call',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Agora Voice Call'),
//         ),
//         body: Center(
//           child: Text('Have a voice call!'),
//         ),
//       ),
//     );
//   }
// }