import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import 'controller.dart';

class ExchangeRate {
  static Future<double?> getRate(
      {String from = "USD", required String to}) async {
    try {
      if (from.isEmpty || to.isEmpty) {
        if (kDebugMode) {
          print("type or amount is missing");
        }
        return null;
      }

      if (from == to) {
        return 1;
      }

      String url =
          "${Controller.ENDPOINT}/${Controller.API_KEY}/${Controller.PAIR}/$from/$to";

      Response resp = (await Controller.getMoney(url))!;
      print(resp.body);

      double rate = jsonDecode(resp.body)['conversion_rate'];

      return rate;
    } catch (err) {
      if (kDebugMode) {
        print("convert err $err");
      }
      return 1.0;
    }
  }
}
