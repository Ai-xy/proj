
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sp_util/sp_util.dart';

import 'Config.dart';
import 'common_util.dart';
import 'dio_manager.dart';

typedef Success<T> = Function(T data);
typedef Fail = Function(int code);

class HttpUtils {
  //get 请求
  static Future<dynamic> get<T>(
    String url,
    parameters, {
    required Success success,
    required Fail fail,
  }) {
    return _request(Method.GET, url, parameters, success: success, fail: fail);
  }

  //post 请求
  static void post<T>(
    String url,
    parameters, {
    required Success success,
    required Fail fail,
  }) {
    _request(Method.POST, url, parameters, success: success, fail: fail);
  }

  //_request 请求
  static Future<dynamic> _request<T>(
    Method method,
    String url,
    parameters, {
    required Success success,
    required Fail fail,
  }) {
   // print('sign：'+CommonUtil.toStringKey(parameters));
//    //参数处理
//    LogUtils.d("--------- parameters ---------");
//    LogUtils.d("$parameters");
    return DioUtils.request(
        method,
        // url,
        '${Config.baseUrl}$url',
        // '${SpUtil.getString(Config.baseUrl)}$url',
        {
          "Content-Type": 'application/json;charset=UTF-8',
          "loginToken": SpUtil.getString(Config.token),
          //"sign": CommonUtil.toStringKey(parameters),
          "sign": parameters,
          "language": 'en_us',
          "appId": Config.appId
        },
        parameters, success: (result) {
      if (result['code'] == '0000') {
        print("--------- parameters ---------");
        print("$result");
        if (result != null) {
          success(result['result']);
        }
      } else if (result['code'] == 1000) {
        //去登录
       // Get.offAllNamed('/login');
       // SpUtil.putString(Config.token, '');
        SpUtil.remove(Config.token);
        SpUtil.remove(Config.userInfo);
      } else if (result['code'] == 500) {
        //去登录
        //EasyLoading.showToast(result['error']);
      } else {
        if (CommonUtil.isEmpty(result['message'])) {
         // EasyLoading.showToast(result['message']);
          Fluttertoast.showToast(msg: result['message']);
        } else {
         // EasyLoading.showToast(result['message']);
          Fluttertoast.showToast(msg: result['message']);
        }
        if (fail != null) {
          fail(int.parse(result['code']));
        }
      }
    }, fail: (code, msg) {
          Fluttertoast.showToast(msg: msg);
      if (fail != null) {
        fail(code);
      }
    });
  }
}
