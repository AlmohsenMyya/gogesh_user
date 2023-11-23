import '../../core/excptions/exceptions.dart';
import '../../core/result/result.dart';
import '../entities/seller_profile/seller_profille.dart';

abstract class SellerRepository {
  Future<Result<SellerProfile, Exceptions>> getSellerProfile(int sellerId);
}
