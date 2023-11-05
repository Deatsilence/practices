import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:practices/feature/short_but_gold/extension/safe_json_decode_extension.dart';
import 'package:practices/feature/short_but_gold/model/book_model.dart';

final class SafeJsonDecodeBookViewModel {
  Future<Book?> safeJsonDecodeBook() async {
    const book = Book(name: "Calculus", author: "Mete Dogan");

    final decodeBody = await book.toJson().safeJsonDecodeCompute();
    log("decodeBody: $decodeBody");
    if (decodeBody is Map) {
      if (kDebugMode) {
        log("Done");
        return Book.fromJson(decodeBody as Map<String, dynamic>);
      }
    }
    return null;
  }
}
