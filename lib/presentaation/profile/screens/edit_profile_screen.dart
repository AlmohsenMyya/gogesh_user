import 'package:commercial_directory_users/domain/entities/profile_entity/profile_response.dart';
import 'package:commercial_directory_users/presentaation/widgets/costume_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropdown_alert/alert_controller.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shimmer/shimmer.dart';

import '../../../Utils.dart';
import '../../../app/locator.dart';
import '../../../app/theme.dart';
import '../../../domain/request/profile/edit_profile_request.dart';
import '../../auth/widgets/drop_down.dart';
import '../../auth/widgets/location_bottom_sheet.dart';
import '../../blocs/Region_bloc/region_bloc.dart';
import '../../blocs/city_bloc/city_bloc.dart';
import '../../blocs/country_bloc/country_bloc.dart';
import '../../blocs/location/location_bloc.dart';
import '../../widgets/input_text_field.dart';
import '../../blocs/profile/profile_bloc.dart';

final _formKey = GlobalKey<FormState>();
int? countryId;
int? cityId;
int? regionId;
PhoneNumber? phoneNumber;

class EditProfileScreen extends HookWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final regionController = useTextEditingController();
    final cityController = useTextEditingController();
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final countryController = useTextEditingController();
    final emailController = useTextEditingController();
    //final dateTimeController = useTextEditingController();
    final phoneController = useTextEditingController();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CityBloc(getCityUseCase: sl()),
        ),
        BlocProvider(
            create: (context) => CountryBloc(getCountryUseCase: sl())
              ..add(const CountryEvent.load())),
        BlocProvider(create: (context) => RegionBloc(getRegionUseCase: sl())),
        BlocProvider(
          create: (context) => ProfileBloc(
              getProfileUseCase: sl(),
              editProfileUseCase: sl(),
              changePasswordUseCase: sl())
            ..add(const ProfileEvent.loadedProfile()),
        ),
      ],
      child: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            succes: () {
              AlertController.show("", "msg", TypeAlert.success);
              context.pop();
            },
            loaded: (value) {
              cityController.text = value.data.city ?? '';
              countryController.text = value.data.country ?? '';
              regionController.text = value.data.region ?? '';
              lastNameController.text = value.data.lastName!;

              firstNameController.text = value.data.firstName!;
              emailController.text = value.data.email!;
              phoneController.text = value.data.phone!;
              // countryId = value.data?.cityId;
              // regionId = value.data?.regionId;
              // cityId = value.data?.cityId;
            },
          );
        },
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("edit_profile").tr(),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    BlocBuilder<ProfileBloc, ProfileState>(
                      buildWhen: (previous, current) => current.maybeWhen(
                        orElse: () => false,
                        loading: () => true,
                        loaded: (data) => true,
                      ),
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 2.h,
                                ),
                                InputTextField(
                                    label: "first_name".tr(),
                                    hint: "first_name".tr(),
                                    controller: firstNameController,
                                    validator: (value) {
                                      return null;
                                    }),
                                InputTextField(
                                    label: "last_name".tr().tr(),
                                    hint: "last_name".tr(),
                                    controller: lastNameController,
                                    validator: (value) {
                                      return null;
                                    }),
                                InputTextField(
                                    label: "email".tr(),
                                    hint: "email".tr(),
                                    suffixIcon: const Icon(
                                      Icons.mail_outline,
                                      color: AppTheme.secondaryColor,
                                      size: 30,
                                    ),
                                    controller: emailController,
                                    validator: (value) {
                                      return null;
                                    }),
                                InputTextField(
                                    label: "phone".tr(),
                                    hint: "phone".tr(),
                                    suffixIcon: const Icon(
                                      Icons.phone_outlined,
                                      color: AppTheme.secondaryColor,
                                      size: 30,
                                    ),
                                    inputType: TextInputType.phone,
                                    controller: phoneController,
                                    validator: (value) {
                                      return null;
                                    }),
                                SizedBox(
                                  height: 2.h,
                                ),
                              ],
                            ),
                          ),
                          loading: () => Shimmer.fromColors(
                            baseColor: Colors.grey.shade200,
                            highlightColor: Colors.grey.shade50,
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  InputTextField(
                                      label: "first_name".tr(),
                                      hint: "first_name".tr(),
                                      controller: firstNameController,
                                      validator: (value) {
                                        return null;
                                      }),
                                  InputTextField(
                                      label: "last_name".tr().tr(),
                                      hint: "last_name".tr(),
                                      controller: lastNameController,
                                      validator: (value) {
                                        return null;
                                      }),
                                  InputTextField(
                                      label: "email".tr(),
                                      hint: "email".tr(),
                                      suffixIcon: const Icon(
                                        Icons.mail_outline,
                                        color: AppTheme.secondaryColor,
                                        size: 30,
                                      ),
                                      controller: emailController,
                                      validator: (value) {
                                        return null;
                                      }),
                                  InputTextField(
                                    label: "phone".tr(),
                                    hint: "phone".tr(),
                                    suffixIcon: const Icon(
                                      Icons.phone_outlined,
                                      color: AppTheme.secondaryColor,
                                      size: 30,
                                    ),
                                    inputType: TextInputType.phone,
                                    controller: phoneController,
                                    validator: (value) {
                                      return null;
                                    },
                                  ),
                                  InputTextField(
                                      label: "country".tr(),
                                      hint: "country".tr(),
                                      suffixIcon: const Icon(
                                        Icons.phone_outlined,
                                        color: AppTheme.secondaryColor,
                                        size: 30,
                                      ),
                                      readOnly: true,
                                      controller: countryController,
                                      validator: (value) {
                                        return null;
                                      }),
                                  InputTextField(
                                      label: "city".tr(),
                                      hint: "city".tr(),
                                      suffixIcon: const Icon(
                                        Icons.phone_outlined,
                                        color: AppTheme.secondaryColor,
                                        size: 30,
                                      ),
                                      readOnly: true,
                                      controller: cityController,
                                      validator: (value) {
                                        return null;
                                      }),
                                  InputTextField(
                                      label: "region".tr(),
                                      hint: "region".tr(),
                                      suffixIcon: const Icon(
                                        Icons.phone_outlined,
                                        color: AppTheme.secondaryColor,
                                        size: 30,
                                      ),
                                      readOnly: true,
                                      controller: regionController,
                                      validator: (value) {
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          loaded: (data) {
                            final isoCode = phoneController.text.split("-")[0];
                            phoneController.text =
                                phoneController.text.split("-")[2];
                            return Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  InputTextField(
                                      label: "first_name".tr(),
                                      hint: "first_name".tr(),
                                      controller: firstNameController,
                                      validator: (value) {
                                        return null;
                                      }),
                                  InputTextField(
                                      label: "last_name".tr().tr(),
                                      hint: "last_name".tr(),
                                      controller: lastNameController,
                                      validator: (value) {
                                        return null;
                                      }),
                                  InputTextField(
                                      label: "email".tr(),
                                      hint: "email".tr(),
                                      suffixIcon: const Icon(
                                        Icons.mail_outline,
                                        color: AppTheme.secondaryColor,
                                        size: 30,
                                      ),
                                      controller: emailController,
                                      validator: (value) {
                                        if (isEmailValid(
                                            emailController.text)) {
                                          return null;
                                        } else {
                                          if (value == null || value.isEmpty) {
                                            return "please_enter_email".tr();
                                          } else {
                                            return "please_enter_valid_email"
                                                .tr();
                                          }
                                        }
                                      }),
                                  Builder(builder: (context) {
                                    return InternationalPhoneNumberInput(
                                      hintText: "phone".tr(),
                                      initialValue:
                                          PhoneNumber(isoCode: isoCode),
                                      onInputChanged: (PhoneNumber number) {
                                        phoneNumber = number;
                                      },
                                      errorMessage:
                                          "please_enter_valid_phone".tr(),
                                      autoValidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      selectorTextStyle:
                                          const TextStyle(color: Colors.black),
                                      textFieldController: phoneController,
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                              signed: true, decimal: true),
                                      inputBorder: const OutlineInputBorder(),
                                    );
                                  }),
                                  Text(
                                    "location".tr(),
                                    style: TextStyle(fontSize: 16.dp),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  BlocBuilder<LocationBloc, LocationState>(
                                    builder: (context, state) {
                                      return state.maybeWhen(
                                          locationFounded:
                                              (county, cit, regio) {
                                            countryController.text = county;
                                            cityController.text = cit;
                                            regionController.text = regio;
                                            return Row(
                                              children: [
                                                Expanded(
                                                  child: TextFormField(
                                                    textInputAction:
                                                        TextInputAction.next,
                                                    controller:
                                                        countryController,
                                                    readOnly: true,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                Expanded(
                                                  child: TextFormField(
                                                    textInputAction:
                                                        TextInputAction.next,
                                                    controller:
                                                        regionController,
                                                    readOnly: true,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 2.w,
                                                ),
                                                Expanded(
                                                  child: TextFormField(
                                                    textInputAction:
                                                        TextInputAction.next,
                                                    controller: cityController,
                                                    readOnly: true,
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                          manually: () => Column(
                                                children: [
                                                  BlocBuilder<CountryBloc,
                                                      CountryState>(
                                                    builder: (context, state) {
                                                      return state.when(
                                                        initial: () {
                                                          return GestureDetector(
                                                            onTap: () => context
                                                                .read<
                                                                    CountryBloc>()
                                                                .add(const CountryEvent
                                                                    .load()),
                                                            child:
                                                                DropDownWidget(
                                                              hint:
                                                                  'choose_country',
                                                              data: [],
                                                              onChange: (v) {
                                                                context
                                                                    .read<
                                                                        CountryBloc>()
                                                                    .add(CountryEvent
                                                                        .changeItem(
                                                                            item:
                                                                                v!));
                                                              },
                                                            ),
                                                          );
                                                        },
                                                        loading: () =>
                                                            DropDownWidget(
                                                          loading: true,
                                                          hint:
                                                              'choose_country',
                                                          data: [],
                                                          onChange: (v) {
                                                            context
                                                                .read<
                                                                    CountryBloc>()
                                                                .add(CountryEvent
                                                                    .changeItem(
                                                                        item:
                                                                            v!));
                                                          },
                                                        ),
                                                        dataLoaded: (e) {
                                                          return DropDownWidget(
                                                            hint:
                                                                'choose_country',
                                                            data: e,
                                                            // value:e[0].id ,
                                                            onChange: (v) {
                                                              context
                                                                  .read<
                                                                      CountryBloc>()
                                                                  .add(CountryEvent
                                                                      .changeItem(
                                                                          item:
                                                                              v!));
                                                              context
                                                                  .read<
                                                                      CityBloc>()
                                                                  .add(CityEvent
                                                                      .load(
                                                                          id: v
                                                                              .id!));

                                                              countryId = v.id;
                                                            },
                                                          );
                                                        },
                                                        itemChanged: (i, data) {
                                                          return DropDownWidget(
                                                            hint:
                                                                'choose_country',
                                                            data: data,
                                                            value: i,
                                                            onChange: (v) {
                                                              context
                                                                  .read<
                                                                      CountryBloc>()
                                                                  .add(CountryEvent
                                                                      .changeItem(
                                                                          item:
                                                                              v!));
                                                              context
                                                                  .read<
                                                                      CityBloc>()
                                                                  .add(CityEvent
                                                                      .load(
                                                                          id: i
                                                                              .id!));

                                                              countryId = v.id;
                                                            },
                                                          );
                                                        },
                                                        error: (msg) =>
                                                            GestureDetector(
                                                          onTap: () => context
                                                              .read<
                                                                  CountryBloc>()
                                                              .add(
                                                                  const CountryEvent
                                                                      .load()),
                                                          child: DropDownWidget(
                                                            hint:
                                                                'choose_country',
                                                            data: [],
                                                            onChange: (v) {
                                                              context
                                                                  .read<
                                                                      CountryBloc>()
                                                                  .add(CountryEvent
                                                                      .changeItem(
                                                                          item:
                                                                              v!));
                                                            },
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  BlocBuilder<CityBloc,
                                                      CityState>(
                                                    builder: (context, state) {
                                                      return state.maybeWhen(
                                                          dataLoaded: (e) {
                                                            return DropDownWidget(
                                                              hint:
                                                                  'choose_city',
                                                              data: e,
                                                              onChange: (v) {
                                                                context
                                                                    .read<
                                                                        CityBloc>()
                                                                    .add(CityEvent
                                                                        .changeItem(
                                                                            item:
                                                                                v!));
                                                                context
                                                                    .read<
                                                                        RegionBloc>()
                                                                    .add(RegionEvent
                                                                        .load(
                                                                            id: v.id!));

                                                                cityId = v.id;
                                                                print(cityId);
                                                              },
                                                            );
                                                          },
                                                          initial: () {
                                                            return DropDownWidget(
                                                              hint:
                                                                  'choose_city',
                                                              data: [],
                                                              onChange: (v) {
                                                                context
                                                                    .read<
                                                                        CityBloc>()
                                                                    .add(CityEvent
                                                                        .changeItem(
                                                                            item:
                                                                                v!));
                                                              },
                                                            );
                                                          },
                                                          itemChanged:
                                                              (i, data) {
                                                            return DropDownWidget(
                                                              hint:
                                                                  'choose_city',
                                                              data: data,
                                                              value: i,
                                                              onChange: (v) {
                                                                context
                                                                    .read<
                                                                        CityBloc>()
                                                                    .add(CityEvent
                                                                        .changeItem(
                                                                            item:
                                                                                v!));
                                                                context
                                                                    .read<
                                                                        RegionBloc>()
                                                                    .add(RegionEvent
                                                                        .load(
                                                                            id: v.id!));

                                                                cityId = i.id;
                                                              },
                                                            );
                                                          },
                                                          loading: () =>
                                                              DropDownWidget(
                                                                loading: true,
                                                                hint:
                                                                    'choose_your_city',
                                                                data: [],
                                                                onChange: (v) {
                                                                  context
                                                                      .read<
                                                                          CityBloc>()
                                                                      .add(CityEvent.changeItem(
                                                                          item:
                                                                              v!));
                                                                },
                                                              ),
                                                          orElse: () =>
                                                              DropDownWidget(
                                                                hint:
                                                                    'choose_city',
                                                                data: [],
                                                                onChange: (v) {
                                                                  context
                                                                      .read<
                                                                          CityBloc>()
                                                                      .add(CityEvent.changeItem(
                                                                          item:
                                                                              v!));
                                                                },
                                                              ));
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  BlocBuilder<RegionBloc,
                                                      RegionState>(
                                                    builder: (context, state) {
                                                      return state.maybeWhen(
                                                          dataLoaded: (e) {
                                                            return DropDownWidget(
                                                              hint:
                                                                  "choose_region",
                                                              data: e,
                                                              onChange: (v) {
                                                                context
                                                                    .read<
                                                                        RegionBloc>()
                                                                    .add(RegionEvent
                                                                        .changeItem(
                                                                            item:
                                                                                v!));

                                                                regionId = v.id;
                                                              },
                                                            );
                                                          },
                                                          initial: () {
                                                            return DropDownWidget(
                                                              hint:
                                                                  "choose_region",
                                                              data: [],
                                                              onChange: (v) {
                                                                context
                                                                    .read<
                                                                        RegionBloc>()
                                                                    .add(RegionEvent
                                                                        .changeItem(
                                                                            item:
                                                                                v!));
                                                              },
                                                            );
                                                          },
                                                          itemChanged:
                                                              (i, data) {
                                                            return DropDownWidget(
                                                              hint:
                                                                  "choose_region",
                                                              data: data,
                                                              value: i,
                                                              onChange: (v) {
                                                                context
                                                                    .read<
                                                                        RegionBloc>()
                                                                    .add(RegionEvent
                                                                        .changeItem(
                                                                            item:
                                                                                v!));

                                                                regionId = v.id;
                                                              },
                                                            );
                                                          },
                                                          loading: () => Stack(
                                                                children: [
                                                                  DropDownWidget(
                                                                    loading:
                                                                        true,
                                                                    hint:
                                                                        "choose_region",
                                                                    data: [],
                                                                    onChange:
                                                                        (v) {
                                                                      context
                                                                          .read<
                                                                              RegionBloc>()
                                                                          .add(RegionEvent.changeItem(
                                                                              item: v!));
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                          orElse: () =>
                                                              DropDownWidget(
                                                                hint:
                                                                    "choose_region",
                                                                data: [],
                                                                onChange: (v) {
                                                                  context
                                                                      .read<
                                                                          RegionBloc>()
                                                                      .add(RegionEvent.changeItem(
                                                                          item:
                                                                              v!));
                                                                },
                                                              ));
                                                    },
                                                  ),
                                                ],
                                              ),
                                          orElse: () => Column(
                                                children: [
                                                  InputTextField(
                                                      hint: "country".tr(),
                                                      readOnly: true,
                                                      controller:
                                                          countryController,
                                                      validator: (value) {
                                                        return null;
                                                      }),
                                                  InputTextField(
                                                      hint: "city".tr(),
                                                      readOnly: true,
                                                      controller:
                                                          cityController,
                                                      validator: (value) {
                                                        return null;
                                                      }),
                                                  InputTextField(
                                                      hint: "region".tr(),
                                                      readOnly: true,
                                                      controller:
                                                          regionController,
                                                      validator: (value) {
                                                        return null;
                                                      }),
                                                ],
                                              ));
                                    },
                                  )
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(height: 2.h),
                    SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          SmartDialog.show(
                            builder: (context) => const LocationBottomSheet(),
                            alignment: Alignment.bottomCenter,
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: AppTheme.green,
                        ),
                        child: const Text("update_location").tr(),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    BlocBuilder<ProfileBloc, ProfileState>(
                      buildWhen: (previous, current) {
                        return current.maybeWhen(
                          orElse: () => true,
                          loading: () => false,
                        );
                      },
                      builder: (context, state) {
                        return SizedBox(
                            width: double.infinity,
                            child: CostumeButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    final profile = EditProfileRequest(
                                      firstname: firstNameController.text,
                                      lastname: lastNameController.text,
                                      city: cityController.text,
                                      cityId: cityId,
                                      country: countryController.text,
                                      email: emailController.text,
                                      phone:
                                          "${phoneNumber?.isoCode}-${phoneNumber?.dialCode}-${phoneController.text.replaceAll(" ", "")}",
                                      countryId: countryId,
                                      regionId: regionId,
                                      region: regionController.text,
                                    );

                                    context.read<ProfileBloc>().add(
                                        ProfileEvent.editProfile(
                                            request: profile));
                                  }
                                },
                                child: state.maybeWhen(
                                    loadingEdit: () =>
                                        LoadingAnimationWidget.prograssiveDots(
                                            color: AppTheme.primaryColor,
                                            size: 20.dp),
                                    orElse: () => const Text("edit").tr())));
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
