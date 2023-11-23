import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/assets.dart';
import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:commercial_directory_users/core/utils/model_id.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_keys.dart';
import 'package:commercial_directory_users/data/local_data_source/local_data_source.dart';
import 'package:commercial_directory_users/domain/usecases/ads/get_home_flash_ad_use_case.dart';
import 'package:commercial_directory_users/domain/usecases/ads/get_sector_flash_ad_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/locator.dart';
import '../../../domain/entities/ad/ad_entity.dart';
import '../../../domain/usecases/currency/determine_currency_use_case.dart';

part 'dialog_ad_event.dart';

part 'dialog_ad_state.dart';

part 'dialog_ad_bloc.freezed.dart';

class DialogAdBloc extends Bloc<DialogAdEvent, DialogAdState> {
  DialogAdBloc(
    this._getHomeFlashAdUseCase,
  ) : super(const DialogAdState.initial()) {
    on<DialogAdEvent>(_mapEventToState);

    /// this is bad thing to call currency things in ad bloc
    if (sl<LocalDataSource>().getValue(LocalDataKeys.userType) != null) {
      unawaited(sl<DetermineCurrencyUseCase>().call(NoParams()));
    }
  }

  final GetHomeFlashAdUseCase _getHomeFlashAdUseCase;

  FutureOr _mapEventToState(DialogAdEvent event, Emitter<DialogAdState> emit) {
    return event.map(getHomeAd: (getHomeAd) async {
      final result = await _getHomeFlashAdUseCase(NoParams());

      return result.when(failure: (failure) {
        return emit(DialogAdState.homeLocalAd(
            ad: Assets.assets_ads_home_flash_png,
            random: Random().nextInt(100)));
      }, success: (success) {
        return emit(DialogAdState.homeAdLoaded(ad: success!));
      });
    });
  }
}
