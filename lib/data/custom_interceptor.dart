import 'package:dio/dio.dart';

import '../../app/locator.dart';
import '../../core/extensions/string_extensions.dart';
import 'local_data_source/local_data_keys.dart';
import 'local_data_source/local_data_source.dart';

class CustomInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    'baseUrl : ${options.baseUrl}\n'
            'url : ${options.uri}\n'
            'path : ${options.path}\n'
            'data : ${options.data}\n'
            'accessToken : ${options.headers["Authorization"]}\n'
            'accessToken : ${options.headers["Accept-Language"]}\n'
        .log(name: 'Dio Request');

    if (false) {
      //  'headers : ${options.headers}'.log(name: 'Dio Request');

      //   return super.onRequest(options, handler);
    } else {
      // options.headers['Authorization'] = 'Bearer accessToken';

      // 'headers : ${options.headers}'.log(name: 'Dio Request');
      return super.onRequest(options, handler);
    }
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    // 'headers : ${response.headers}\n'
    //         'data : ${response.data}\n'
    //         'statusCode : ${response.statusCode}\n'
    //         'statusMessage : ${response.statusMessage}'
    //     .log(name: 'Dio Response');

    return super.onResponse(response, handler);
  }

  @override
  Future<void> onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) async {
    'error : ${err.error}\n'
            'message : ${err.message}\n'
            'response : ${err.response}\n'
            'data : ${err.response?.data}\n'
            'headers : ${err.response?.headers}\n'
            'statusCode : ${err.response?.statusCode}\n'
            'statusMessage : ${err.response?.statusMessage}'
        .log(name: 'Dio Error');

    return super.onError(err, handler);
  }
}
