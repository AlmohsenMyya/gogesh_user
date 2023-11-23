import 'dart:async';
import 'package:commercial_directory_users/domain/entities/sector_entity.dart';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/domain/usecases/categories/fetch_sectors_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../core/fillters/filter.dart';

part 'sector_event.dart';

part 'sector_state.dart';

part 'sector_bloc.freezed.dart';

class SectorsSectorBloc extends SectorBloc {
  SectorsSectorBloc(super.fetchSectorsUseCase);
}

class SectorBloc extends Bloc<SectorEvent, SectorState> {
  SectorBloc(this._fetchSectorsUseCase) : super(const SectorState.initial()) {
    on<SectorEvent>(_mapEventToState, transformer: droppable());
  }

  final PagingController<int, Sector> pagingController = PagingController(
    firstPageKey: 1,
  );

  final FetchSectorsUseCase _fetchSectorsUseCase;
  var data = <Sector>[];
  Sector? value;

  FutureOr<dynamic> _mapEventToState(
      SectorEvent event, Emitter<SectorState> emit) async {
    return event.map(
      load: (e) async {
        emit(const SectorState.loading());
        final result = await _fetchSectorsUseCase(e.filter);
        return emit(result.when(failure: (failure) {
          return failure!.maybeMap(
              orElse: () => const SectorState.error(
                  ErrorState.other(message: "something_went_wrong")),
              network: (message) => SectorState.error(
                  ErrorState.networkError(message: message.message)));
        }, success: (success) {
          if (success!.data.isEmpty) {
            return const SectorState.dataLoaded(data: [], pageKey: 0);
          }
          if (success.meta != null) {
            if (success.meta!.currentPage == success.meta!.lastPage) {
              return SectorState.lastPageLoaded(data: success.data);
            }
            return SectorState.dataLoaded(
                data: success.data,
                pageKey:
                    success.meta!.nextPage ?? success.meta!.currentPage! + 1);
          }

          return SectorState.dataLoaded(data: success.data, pageKey: 0);
        }));
      },
      changeItem: (e) {
        value = e.item;
        return emit(SectorState.itemChanged(item: e.item, data: data));
      },
    );
  }
}
