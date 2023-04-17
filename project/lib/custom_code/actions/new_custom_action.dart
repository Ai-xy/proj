// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'dart:math' as math;

String? newCustomAction(dynamic data) {
  /// MODIFY CODE ONLY BELOW THIS LINE

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

  String valueMd5 = '${valueData}97364422';

  var content = new Utf8Encoder().convert(valueMd5);
  var digest = md5.convert(content);

  final hexDigits = '0123456789abcdef';
  final buffer = StringBuffer();
  for (final byte in digest.bytes) {
    buffer.write(hexDigits[(byte & 0xF0) >> 4]);
    buffer.write(hexDigits[byte & 0x0F]);
  }
  return buffer.toString().toUpperCase();

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
