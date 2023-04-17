import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:convert/convert.dart';
import 'Config.dart';

class CommonUtil {
  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static bool isEmpty(String str) {
    // ignore: unnecessary_null_comparison
    if (str == null) {
      return true;
    } else {
      if (str == '') {
        return true;
      } else {
        return false;
      }
    }
  }

  static void showToast(String str) {
    Fluttertoast.showToast(
      msg: str,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Color(0xff313E59).withOpacity(0.8),
    );
  }

  static bool isRise(num change) {
    if (change > 0) {
      return true;
    }
    return false;
  }

  static String isRiseString(num change) {
    if (change > 0) {
      return '+';
    }
    return '';
  }

  static String formatTime(DateTime time) {
    if (time == null) {
      return '';
    }

    return time.year.toString() +
        '-' +
        pad(time.month.toString()) +
        '-' +
        pad(time.day.toString()) +
        ' ' +
        pad(time.hour.toString()) +
        ':' +
        pad(time.minute.toString());
  }

  static String formatTimeHHSSMM(DateTime time) {
    if (time == null) {
      return '';
    }

    return pad(time.hour.toString()) +
        ':' +
        pad(time.minute.toString()) +
        ':' +
        pad(time.second.toString());
  }

  static String pad(String obj) {
    if (obj.length == 1) {
      return '0' + obj;
    } else {
      return obj;
    }
  }

  static String genNum() {
    String alphabet = '1234567890';
    int strlenght = 8;

    /// 生成的字符串固定长度
    String left = '';
    for (var i = 0; i < strlenght; i++) {
      left = left + alphabet[Random().nextInt(alphabet.length)];
    }
    return left;
  }

  static String generateMd5(String data) {
    var content = new Utf8Encoder().convert(data);
    var digest = md5.convert(content);
    return hex.encode(digest.bytes);
  }

  static String toStringKey(Map data) {
    String valueData = '';
    List<dynamic> keys = data.keys.toList();
    keys.sort();
    keys.forEach((key) {
      var value = data[key];
      if (value is List && value.isNotEmpty) {
        if (value[0] is String) {
          value = '["${value.join('","')}"]';
        } else {
          value = '[${value.join(',')}]';
        }
      }
      valueData = '${valueData}${key}${value}';
    });
    print(valueData);
    return generateMd5('${valueData}${Config.appId}').toUpperCase();
  }
}
