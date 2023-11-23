import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:commercial_directory_users/core/bloc/bloc_errors/error.dart';
import 'package:commercial_directory_users/domain/request/profile/edit_profile_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/use_case/use_case.dart';
import '../../../domain/entities/profile_entity/profile_response.dart';
import '../../../domain/request/profile/edit_password_request.dart';
import '../../../domain/usecases/profile/change_password_use_case.dart';
import '../../../domain/usecases/profile/edit_profile_use_case.dart';
import '../../../domain/usecases/profile/get_profile_use_case.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileUseCase getProfileUseCase;
  final EditProfileUseCase editProfileUseCase;
  final ChangePasswordUseCase? changePasswordUseCase;

  ProfileBloc(
      {required this.getProfileUseCase,
      required this.editProfileUseCase,
      required this.changePasswordUseCase})
      : super(const ProfileState.loading()) {
    on<ProfileEvent>((_mapEventToState));
  }
  FutureOr _mapEventToState(ProfileEvent event, Emitter<ProfileState> emit) {
    return event.map(loadedProfile: (_) async {
      emit(const ProfileState.loading());
      var result = await getProfileUseCase(NoParams());
      emit(
        result.when(
            failure: (error) =>
                ProfileState.error(error: error!.localizedErrorMessage),
            success: (s) => ProfileState.loaded(data: s!)),
      );
    }, editProfile: (value) async {
      emit(const ProfileState.loadingEdit());
      var result = await editProfileUseCase(value.request);
      return emit(
        result.when(
            failure: (error) =>
                ProfileState.error(error: error!.localizedErrorMessage),
            success: (s) => const ProfileState.succes()),
      );
    }, changePassword: (_changePassword value) async {
      emit(const ProfileState.loading());
      var result = await changePasswordUseCase!(value.request);
      return emit(
        result.when(
          failure: (error) =>
              ProfileState.error(error: error?.localizedErrorMessage),
          success: (s) => const ProfileState.succes(),
        ),
      );
    });
  }
}
