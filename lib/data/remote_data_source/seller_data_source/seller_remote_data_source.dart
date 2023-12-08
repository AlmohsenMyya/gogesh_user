import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

import '../../response/seller/seller_profile_response.dart';

part 'seller_remote_data_source.g.dart';

@RestApi(
  baseUrl: "https://progressmaxonline.com/api/v1",
  parser: Parser.FlutterCompute,
)
abstract class SellerDataSource {
  factory SellerDataSource(Dio dio, {String baseUrl}) = _SellerDataSource;

  @GET("/seller/details/{id}")
  Future<HttpResponse<SellerProfileResponse>> getSellerProfile(
      {@Path("id") required int id});
}
