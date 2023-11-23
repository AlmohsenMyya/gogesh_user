import 'package:bloc/bloc.dart';

enum ViewMode { grid, list }

class ViewModeCubit extends Cubit<ViewMode> {
  ViewModeCubit() : super(ViewMode.grid);
  changeViewMode() {
    if (state == ViewMode.grid) {
      emit(ViewMode.list);
    } else {
      emit(ViewMode.grid);
    }
  }
}
