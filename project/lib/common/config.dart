import 'dart:ui';

class Config {
  static bool isDebug = true;

  static int VERSION_CODE = 1;

  static num delayedTime = 140;
  static num vibrateTime = 30;
  static num vibrateAmp = 800;
  static const String theme = 'AppTheme';
  static const String token = 'token';
  static const String userId = '0';
  static String imToken = 'imToken'; // 云信token
  static String yxAccid = 'yxAccid'; // 云信ID
  static const String userInfo = 'userInfo';
  // static const String appId = '58426639';
  static const String appId = '97364422';
  //static const String appKey = '03b4756744f0a7030e3a3475454f11e8';
  static const String appKey = '124f689baed25c488e1330bc42e528af';
  static const String swAppId = 'c1a6086bd09241298a9945ae02e09796';

  static const String baseUrl = 'http://8.134.216.253:8000';
  static const String imgUrl =
      'https://app-bucket-test.oss-cn-guangzhou.aliyuncs.com/';
  static const String videoThumbnailSuffix =
      '?x-oss-process=video/snapshot,t_1000,f_jpg,w_0,h_0,m_fast,ar_auto';
  static const String isFirst = 'isFirst';

  //static Color mainColor = Color(0xff0a2c48);
  //static Color backgroundColor = Color(0xff09141e);
  //static Color blackColor = Color(0xff030f19);
  //static Color mainColorMore = Color(0xff0a1d2b);
  //static Color mainColorLess = Color(0xff0f2234);
  static Color accentColor = Color(0xff00bd70);

  static Color greenColorLess = Color(0xffbaf754);
  static Color greenColor = Color(0xff17D7AB);
  static Color redColorLess = Color(0xffd73a65);
  static Color redColor = Color(0xFFEE6588);

  static Color textGrey = Color(0xff919191);
  static Color greyColor = Color(0xff919191);
  static Color halfWhite = Color.fromRGBO(255, 255, 255, 0.5);

  static Color text3A = Color(0xff759fc5);
  static Color EOEOEO = Color(0xffE0E0E0);
  static Color ECECEC = Color(0xffECECEC);

  // static num size_BIG = ScreenUtil().setSp(38);
}
