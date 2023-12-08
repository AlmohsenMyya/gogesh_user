import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

part 'privacy_policy_data_source.g.dart';

@RestApi(
  baseUrl: "https://progressmaxonline.com/api/v1",
  parser: Parser.FlutterCompute,
)
abstract class PrivacyPolicyRemoteDataSource {
  factory PrivacyPolicyRemoteDataSource(Dio dio, {String baseUrl}) =
      _PrivacyPolicyRemoteDataSource;

  @GET("/customer/account")
  Future<HttpResponse> getPrivacyPolicy();
}
