import 'dart:io';

import 'package:permission_handler/permission_handler.dart';
import 'package:project/apis/device.dart';
import 'package:project/common/http_utils.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:sp_util/sp_util.dart';
import 'common/Config.dart';
import 'common/router/myRouterDelegate.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'index.dart';
import 'models/User.dart';

MyRouterDelegate? routerDelegate;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.getInstance();
  await getAbcInfo();

  // bool flag = await isLogin();
  // routerDelegate = MyRouterDelegate(flag);

  final appState = FFAppState(); // Initialize FFAppState

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: MyApp(),
  ));
}

// Future<bool> isLogin() async {
//   User? user = getUser();
//   if (user!.userId != null) {
//     print('/////////' + user.userId.toString());
//     return true;
//   }
//   print("没有登录");
//   return false;
// }

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = ThemeMode.system;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    print("app初始化");
    requestPermissions();
    _appStateNotifier = AppStateNotifier();
    User? user = SpUtil.getObj<User>(
        Config.userInfo, (v) => User.fromJson(v as Map<String, dynamic>));
    _router = createRouter(_appStateNotifier,user);
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'project',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(brightness: Brightness.light),
      themeMode: _themeMode,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      //routeInformationParser: MyRouteInformationParser(),
      //routerDelegate: routerDelegate,
    );
  }

  Future<void> requestPermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
      Permission.camera,
      Permission.microphone,
      Permission.storage,
    ].request();

    if (statuses[Permission.location]!.isGranted) {
      // 访问位置权限已授予
    }

    if (statuses[Permission.camera]!.isGranted) {
      // 摄像头权限已授予
    }

    if (statuses[Permission.microphone]!.isGranted) {
      // 麦克风权限已授予
    }

    if (statuses[Permission.storage]!.isGranted) {
      // 存储权限已授予
    }
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key? key, this.initialPage, this.page}) : super(key: key);

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'page01';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'page01': Page01Widget(),
      'page02': Page02Widget(),
      'page03': Page03Widget(),
      'page04': Page04Widget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);
    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: FlutterFlowTheme.of(context).thisBackground,
        selectedItemColor: Color(0xFFFFD500),
        unselectedItemColor: Color(0xFF848591),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24.0,
            ),
            label: 'Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24.0,
            ),
            label: 'Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24.0,
            ),
            label: 'Home',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 24.0,
            ),
            label: 'Home',
            tooltip: '',
          )
        ],
      ),
    );
  }
}

/// 获取审核信息
getAbcInfo() async {
  print('正在获取审核信息');
  HttpUtils.post(Apis.getAbcInfo, {
    "channel": "GOOGLE",
    "deviceNo": "",
    "deviceType": "",
    "osType": "AOS",
    "useSimCard": 0,
    "version": "1.0.0"
  }, success: (data) {
    print("获取审核信息" + data);
  }, fail: (data) {
    print('错误码 tag error $data');
  });
}
