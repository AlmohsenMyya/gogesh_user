import 'package:flutter_bloc/flutter_bloc.dart';

class SideMenuCubit extends Cubit<bool> {
  SideMenuCubit() : super(true);
  sideMenuActionTaken() {
    emit(!state);
  }
}
