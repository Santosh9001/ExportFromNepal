import 'package:flutter/foundation.dart';

class APIBase {
  static String get baseURL {
    if (kReleaseMode) {
      return "https://staging.exportfromnepal.com/rest/default/V1/";
    } else {
      return "https://staging.exportfromnepal.com/rest/default/V1/";
    }
  }
}
