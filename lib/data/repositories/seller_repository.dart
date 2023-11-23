import 'package:commercial_directory_users/core/excptions/exceptions.dart';

import 'package:commercial_directory_users/core/result/result.dart';
import 'package:commercial_directory_users/data/remote_data_source/seller_data_source/seller_remote_data_source.dart';
import 'package:commercial_directory_users/data/repositories/offer_repository.dart';

import 'package:commercial_directory_users/domain/entities/seller_profile/seller_profille.dart';
import 'package:dio/dio.dart';

import '../../domain/repositories/seller_repository.dart';

class SellerRepositoryImpl implements SellerRepository {
  final SellerDataSource _sellerDataSource;

  SellerRepositoryImpl(this._sellerDataSource);

  @override
  Future<Result<SellerProfile, Exceptions>> getSellerProfile(
      int sellerId) async {
    try {
      final res = await _sellerDataSource.getSellerProfile(id: sellerId);
      if (res.response.statusCode!.isOk) {
        return Result.success(data: res.data.data);
      }
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    }
    return const Result.failure(
        error: Exceptions.other("something_went_wrong"));
  }
}
