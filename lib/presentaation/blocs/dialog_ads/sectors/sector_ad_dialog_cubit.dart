import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../assets.dart';
import '../../../../core/utils/model_id.dart';
import '../../../../domain/entities/ad/ad_entity.dart';
import '../../../../domain/usecases/ads/get_sector_flash_ad_use_case.dart';

part 'sector_ad_dialog_state.dart';
part 'sector_ad_dialog_cubit.freezed.dart';

class SectorAdDialogCubit extends Cubit<SectorAdDialogState> {
  SectorAdDialogCubit(this._getSectorFlashAdUseCase)
      : super(const SectorAdDialogState.initial());
  final GetSectorFlashAdUseCase _getSectorFlashAdUseCase;

  loadAd(sectorId) async {
    final result = await _getSectorFlashAdUseCase(ModelID(id: sectorId));
    return result.when(failure: (failure) {
      return emit(SectorAdDialogState.sectorLocalAd(
          ad: Assets.assets_ads_home_flash_png, random: Random().nextInt(100)));
    }, success: (success) {
      return emit(SectorAdDialogState.sectorAdLoaded(
          ad: success!, random: Random().nextInt(100)));
    });
  }
}
