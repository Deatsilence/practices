import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

extension SafeJsonDecodeCompute on Map {
  /// Decode your [jsonString] value with safety
  Future<dynamic> safeJsonDecodeCompute() async {
    try {
      String jsonString = jsonEncode(this);

      return await compute<String, dynamic>(
        jsonDecode,
        jsonString,
      );
    } catch (e) {
      // Logger().e("Json decode error");
      Logger().e(e.toString());
      return null;
    }
  }
}
