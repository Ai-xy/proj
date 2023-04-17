import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import 'error_handle.dart';

const Duration _connectTimeout = Duration(seconds: 15); //15s
const Duration _receiveTimeout = Duration(seconds: 15);
const Duration _sendTimeout = Duration(seconds: 10);

typedef Success<T> = Function(T data);
typedef Fail = Function(int code, String msg);
//typedef SuccessListCallback<T> = Function(List<T> data);

class DioUtils {
  // default options
  static const String TOKEN = '';

  // static  _dio  =  null;
  static BaseOptions options = BaseOptions(
    /// 请求的Content-Type，默认值是"application/json; charset=utf-8".
    /// 如果您想以"application/x-www-form-urlencoded"格式编码请求数据,
    /// 可以设置此选项为 `Headers.formUrlEncodedContentType`,  这样[Dio]就会自动编码请求体.
//        contentType: Headers.formUrlEncodedContentType, // 适用于post form表单提交

    validateStatus: (status) {
      // 不使用http状态码判断状态，使用AdapterInterceptor来处理（适用于标准REST风格）
      return true;
    },
    headers: httpHeaders,
    responseType: ResponseType.json,

    connectTimeout: _connectTimeout,
    receiveTimeout: _receiveTimeout,
    sendTimeout: _sendTimeout,
  );
  static Dio _dio = new Dio(options);
  // 创建 dio 实例对象
  static Dio createInstance() {
//     if (_dio == null) {
//       /// 全局属性：请求前缀、连接超时时间、响应超时时间
//       var options = BaseOptions(
//         /// 请求的Content-Type，默认值是"application/json; charset=utf-8".
//         /// 如果您想以"application/x-www-form-urlencoded"格式编码请求数据,
//         /// 可以设置此选项为 `Headers.formUrlEncodedContentType`,  这样[Dio]就会自动编码请求体.
// //        contentType: Headers.formUrlEncodedContentType, // 适用于post form表单提交
//         responseType: ResponseType.json,
//         validateStatus: (status) {
//           // 不使用http状态码判断状态，使用AdapterInterceptor来处理（适用于标准REST风格）
//           return true;
//         },
//         baseUrl: Apis.BASE_URL,
//         headers: httpHeaders,
//         connectTimeout: _connectTimeout,
//         receiveTimeout: _receiveTimeout,
//         sendTimeout: _sendTimeout,
//       );
//       _dio = new Dio(options);
//     }
    return _dio;
  }

  // // 清空 dio 对象
  // static clear() {
  //   _dio = new Dio();
  // }

  // 请求，返回参数为 T
  // method：请求方法，Method.POST等
  // path：请求地址
  // params：请求参数
  // success：请求成功回调
  // error：请求失败回调
  static Future request<T>(
      Method method, String path, dynamic headers, dynamic params,
      {required Success success, Fail? fail}) async {
    try {
      //没有网络
      var connectivityResult = await (new Connectivity().checkConnectivity());
      if (connectivityResult == ConnectivityResult.none) {
        _onError(ExceptionHandle.net_error, '网络异常，请检查你的网络！', fail!);
        return;
      }
      Dio _dio = createInstance();
      var data;
      var queryParameters;
      if (method == Method.GET) {
        queryParameters = params;
      }
      if (method == Method.POST) {
        data = params;
      }
      _dio.options.headers = headers;
      Response response = await _dio.request(
        path,
        data: data,
        queryParameters: queryParameters,
        options: Options(method: MethodValues[method]),
      );
      if (response != null) {
        if (success != null) {
          success(response.data);
        }
      } else {
        _onError(ExceptionHandle.unknown_error, '未知错误', fail!);
      }
    } on DioError catch (e) {
//      LogUtils.print_('请求出错：' + e.toString());
      final NetError netError = ExceptionHandle.handleException(e);
      _onError(netError.code, netError.msg, fail!);
    }
  }
}

/// 自定义Header
Map<String, dynamic> httpHeaders = {
  'Accept': 'application/json,*/*',
  'Content-Type': 'application/json',
  // 'token': SpUtil.getString(Config.token),
  // "language": ui.window.locale,
  // "appId": Config.token
  // "EXP-DEVICE": Platform.isAndroid ? "ANDROID" : "iOS",
};

void _onError(int code, String msg, Fail fail) {
  if (code == null) {
    code = ExceptionHandle.unknown_error;
    msg = '未知异常';
  }
  if (fail != null) {
    fail(code, msg);
  }
}

Map<String, dynamic> parseData(String data) {
  return json.decode(data) as Map<String, dynamic>;
}

enum Method { GET, POST, DELETE, PUT, PATCH, HEAD }

//使用：MethodValues[Method.POST]
const MethodValues = {
  Method.GET: "get",
  Method.POST: "post",
  Method.DELETE: "delete",
  Method.PUT: "put",
  Method.PATCH: "patch",
  Method.HEAD: "head",
};
