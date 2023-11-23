import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/utils/model_id.dart';
import 'package:commercial_directory_users/domain/entities/activity_entity.dart';
import 'package:commercial_directory_users/domain/usecases/categories/fetch_sectors_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/categories/fetch_activities_usecase.dart';

part 'activity_event.dart';
part 'activity_state.dart';
part 'activity_bloc.freezed.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  ActivityBloc(this._activitiesUseCase) : super(const ActivityState.initial()) {
    on<ActivityEvent>(_mapEventToState);
  }

  final FetchActivitiesUseCase _activitiesUseCase;

  var data = <Activity>[];
  Activity? value;
  FutureOr<dynamic> _mapEventToState(
      ActivityEvent event, Emitter<ActivityState> emit) async {
    return event.map(load: (e) async {
      emit(const ActivityState.initial());
      final result =
          await _activitiesUseCase(Filter(page: e.page, q: e.searchKey));
      return emit(result.when(
          failure: (failure) => const ActivityState.error(),
          success: (success) {
            data = success!;
            return ActivityState.dataLoaded(data: ActivityData(data: success));
          }));
    }, changeItem: (e) {
      value = e.item;
      return emit(ActivityState.itemChanged(item: e.item, data: data));
    });
  }
}
