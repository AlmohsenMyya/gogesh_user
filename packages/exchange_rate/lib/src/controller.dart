import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Controller {
  // url
  static const String ENDPOINT = "https://v6.exchangerate-api.com/v6";
  static const String COMPACT = "compact=ultra";
  // secret key
  static const String API_KEY = "4f6374f895c1b478bdb05a91";
  static const String PAIR = "pair";

// get money function used for call api and return value
  static Future<http.Response?> getMoney(url) async {
    try {
      if (kDebugMode) {
        print(url);
      }
//cal api
      final response = await http.get(Uri.parse(url));
// get response
      return response;
    } catch (e) {
// catch er
      print("fetch get err $e");
    }
  }
}
