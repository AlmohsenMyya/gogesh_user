import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/core/utils/model_id.dart';
import 'package:commercial_directory_users/domain/usecases/offer/add_offfer_to_favorit_use_case.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../../app/locator.dart';
import '../../../../core/fillters/filter.dart';
import '../../../../domain/usecases/offer/remove_offfer_from_favorit_use_case.dart';
import '../offer_bloc.dart';

class FavCubit extends Cubit<bool> {
  FavCubit(
      this._addOfferToFavoriteUseCase, this._removeOfferFromFavoriteUseCase,
      {required bool fav})
      : super(fav);
  final RemoveOfferFromFavoriteUseCase _removeOfferFromFavoriteUseCase;
  final AddOfferToFavoriteUseCase _addOfferToFavoriteUseCase;

  addToFav(int id) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return;
    }
    emit(true);
    final result = await _addOfferToFavoriteUseCase(ModelID(id: id));
    result.whenOrNull(
      failure: (_) => emit(false),
    );
  }

  removeOfferFav(int id) async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return;
    }
    emit(false);
    final result = await _removeOfferFromFavoriteUseCase(ModelID(id: id));
    result.whenOrNull(
      failure: (_) => emit(true),
    );
  }
}
