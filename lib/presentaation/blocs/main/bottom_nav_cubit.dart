import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ads/screens/ads_screen.dart';
import '../../favorites/secreen/favorites_screen.dart';
import '../../home/screens/home_screen.dart';
import '../../profile/screens/profile_screen.dart';
import '../../sectors/screens/sectors_screen.dart';

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  changeIndex(int index) {
    emit(index);
  }
}
