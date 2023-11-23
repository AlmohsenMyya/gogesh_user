import 'package:bloc/bloc.dart';

class SectorFilter<T> extends FilterCubit<T> {
  SectorFilter({required super.init});
}

class AdsFilter<T> extends FilterCubit<T> {
  AdsFilter({required super.init});
}

class FilterCubit<T> extends Cubit<T?> {
  FilterCubit({required T? init}) : super(init);

  changeItem(T? item) {
    emit(item);
  }
}
