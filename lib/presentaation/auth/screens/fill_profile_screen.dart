import 'dart:io';

import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/assets.dart';
import 'package:commercial_directory_users/presentaation/widgets/costume_button.dart';
import 'package:easy_localization/easy_localization.dart' as easy_localization;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropdown_alert/alert_controller.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

import 'package:intl_phone_number_input/intl_phone_number_input.dart'
    as intl_phone;
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../Utils.dart';
import '../../../app/locator.dart';
import '../../../app/router.dart';
import '../../../data/local_data_source/local_data_keys.dart';
import '../../../data/local_data_source/local_data_source.dart';
import '../../../domain/request/auth/register/register_customer.dart';
import '../../blocs/Region_bloc/region_bloc.dart';
import '../../blocs/auth/auth_bloc.dart';
import '../../blocs/city_bloc/city_bloc.dart';
import '../../blocs/country_bloc/country_bloc.dart';
import '../../blocs/dialog_ads/dialog_ad_bloc.dart';
import '../../blocs/location/location_bloc.dart';
import '../widgets/drop_down.dart';
import '../widgets/location_bottom_sheet.dart';

Gender? gender;
int? countryId;
int? cityId;
int? regionId;
File? image;
intl_phone.PhoneNumber? phoneNumber;

final _formKey = GlobalKey<FormState>();
bool isChecked = false;

class FillProfileScreen extends StatefulWidget {
  const FillProfileScreen(
      {Key? key,
      required this.email,
      required this.password,
      required this.passwordConfirmation})
      : super(key: key);
  final String email, password, passwordConfirmation;

  @override
  State<FillProfileScreen> createState() => _FillProfileScreenState();
}

class _FillProfileScreenState extends State<FillProfileScreen> {
  final phone = TextEditingController();
  final lastName = TextEditingController();
  final firstName = TextEditingController();
  final country = TextEditingController();
  final region = TextEditingController();
  final city = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    phone.dispose();
    lastName.dispose();
    firstName.dispose();
    country.dispose();
    region.dispose();
    city.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.read<LocationBloc>().add(const LocationEvent.pickLocation());

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CityBloc(getCityUseCase: sl()),
        ),
        BlocProvider(
            create: (context) => CountryBloc(getCountryUseCase: sl())
              ..add(const CountryEvent.load())),
        BlocProvider(create: (context) => RegionBloc(getRegionUseCase: sl()))
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                  orElse: () {},
                  registered: (msg) {
                    context
                        .read<DialogAdBloc>()
                        .add(const DialogAdEvent.getHomeAd());
                    context.goNamed(Routes.home.name);
                  });
            },
          ),
          BlocListener<LocationBloc, LocationState>(
            listener: (context, state) {
              state.whenOrNull(error: (error) {
                AlertController.show("", error.tr(), TypeAlert.error);
              }, locationPicked: () {
                SmartDialog.show(
                  backDismiss: false,
                  clickMaskDismiss: false,
                  builder: (context) => const LocationBottomSheet(),
                  alignment: Alignment.bottomCenter,
                );
              }, serviceUnEnabled: () {
                SmartDialog.showLoading(
                  builder: (_) {
                    return Container(
                      height: 20.h,
                      width: 70.w,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("to_continue_turn_on_device_location".tr()),
                          const Expanded(child: SizedBox()),
                          Row(
                            children: [
                              TextButton(
                                onPressed: () async {
                                  Geolocator.openLocationSettings();
                                  SmartDialog.dismiss();
                                  showModalBottomSheet(
                                      isDismissible: false,
                                      enableDrag: false,
                                      context: context,
                                      useSafeArea: true,
                                      shape: const OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      builder: (context) =>
                                          const LocationBottomSheet());
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    foregroundColor: AppTheme.secondaryColor),
                                child: const Text(
                                  "ok",
                                  style: TextStyle(color: AppTheme.green),
                                ).tr(),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              TextButton(
                                onPressed: () {
                                  context.read<LocationBloc>().add(
                                      const LocationEvent.addEventManually());
                                  SmartDialog.dismiss();
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    foregroundColor: AppTheme.secondaryColor),
                                child: const Text(
                                  "no_thanks",
                                  style: TextStyle(color: AppTheme.green),
                                ).tr(),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                );
              });
            },
          ),
        ],
        child: GestureDetector(
          // onTap: () {
          //   FocusScopeNode currentFocus = FocusScope.of(context);
          //
          //   if (!currentFocus.hasPrimaryFocus) {
          //     currentFocus.unfocus();
          //   }
          // },
          child: Scaffold(
            appBar: AppBar(
              title: const Text("fill_profile").tr(),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      StatefulBuilder(
                        builder: (context, setState) {
                          return Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              image != null
                                  ? Container(
                                      height: 35.w,
                                      width: 35.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          image: DecorationImage(
                                            image: FileImage(image!),
                                            fit: BoxFit.cover,
                                          )),
                                    )
                                  : Container(
                                      height: 35.w,
                                      width: 35.w,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                              IconButton(
                                  onPressed: () async {
                                    var result =
                                        await pickImage(ImageSource.gallery);
                                    if (result != null) {
                                      setState(() => image = File(result.path));
                                    }
                                  },
                                  style: const ButtonStyle(
                                      padding: MaterialStatePropertyAll(
                                          EdgeInsets.zero)),
                                  icon: SvgPicture.asset(
                                    Assets.assets_icons_edit_svg,
                                    width: 40,
                                    height: 40,
                                  ))
                            ],
                          );
                        },
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration:
                            InputDecoration(hintText: "first_name".tr()),
                        controller: firstName,
                        validator: firstNameValidator,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration:
                              InputDecoration(hintText: "last_name".tr()),
                          controller: lastName,
                          validator: lastNameValidator),
                      SizedBox(
                        height: 2.h,
                      ),
                      intl_phone.InternationalPhoneNumberInput(
                        hintText: "phone".tr(),
                        onInputChanged: (intl_phone.PhoneNumber number) {
                          phoneNumber = number;
                        },
                        errorMessage: "please_enter_valid_phone".tr(),
                        autoValidateMode: AutovalidateMode.onUserInteraction,
                        selectorTextStyle: const TextStyle(color: Colors.black),
                        textFieldController: phone,
                        keyboardType: const TextInputType.numberWithOptions(
                            signed: true, decimal: true),
                        inputBorder: const OutlineInputBorder(),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      BlocBuilder<LocationBloc, LocationState>(
                        builder: (context, state) {
                          /// TODO
                          return state.maybeWhen(
                              loadingLocation: () => const Center(
                                    child: SizedBox(
                                      child: CircularProgressIndicator(
                                          strokeWidth: 1),
                                    ),
                                  ),
                              locationFounded: (county, cit, regio) {
                                country.text = county;
                                city.text = cit;
                                region.text = regio;
                                return Column(
                                  children: [
                                    TextFormField(
                                      textInputAction: TextInputAction.next,
                                      controller: country,
                                      readOnly: true,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    TextFormField(
                                      textInputAction: TextInputAction.next,
                                      controller: region,
                                      readOnly: true,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    TextFormField(
                                      textInputAction: TextInputAction.next,
                                      controller: city,
                                      readOnly: true,
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                  ],
                                );
                              },
                              manually: () => Column(
                                    children: [
                                      BlocBuilder<CountryBloc, CountryState>(
                                        builder: (context, state) {
                                          return state.when(
                                            initial: () {
                                              return DropDownWidget(
                                                hint: 'choose_country',
                                                data: [],
                                                onChange: (v) {
                                                  context
                                                      .read<CountryBloc>()
                                                      .add(CountryEvent
                                                          .changeItem(
                                                              item: v!));
                                                },
                                              );
                                            },
                                            loading: () => DropDownWidget(
                                              loading: true,
                                              hint: 'choose_country',
                                              data: [],
                                              onChange: (v) {
                                                context.read<CountryBloc>().add(
                                                    CountryEvent.changeItem(
                                                        item: v!));
                                              },
                                            ),
                                            dataLoaded: (e) {
                                              return DropDownWidget(
                                                hint: 'choose_country',
                                                data: e,
                                                onChange: (v) {
                                                  context
                                                      .read<CountryBloc>()
                                                      .add(CountryEvent
                                                          .changeItem(
                                                              item: v!));
                                                  context.read<CityBloc>().add(
                                                      CityEvent.load(
                                                          id: v.id!));

                                                  countryId = v.id;
                                                },
                                              );
                                            },
                                            itemChanged: (i, data) {
                                              return DropDownWidget(
                                                hint: 'choose_country',
                                                data: data,
                                                value: i,
                                                onChange: (v) {
                                                  context
                                                      .read<CountryBloc>()
                                                      .add(CountryEvent
                                                          .changeItem(
                                                              item: v!));
                                                  context.read<CityBloc>().add(
                                                      CityEvent.load(
                                                          id: i.id!));

                                                  countryId = v.id;
                                                },
                                              );
                                            },
                                            error: (msg) => GestureDetector(
                                              onTap: () => context
                                                  .read<CountryBloc>()
                                                  .add(const CountryEvent
                                                      .load()),
                                              child: DropDownWidget(
                                                hint: 'choose_country',
                                                data: [],
                                                onChange: (v) {
                                                  context
                                                      .read<CountryBloc>()
                                                      .add(CountryEvent
                                                          .changeItem(
                                                              item: v!));
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      BlocBuilder<CityBloc, CityState>(
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                              dataLoaded: (e) {
                                                return DropDownWidget(
                                                  hint: 'choose_city',
                                                  data: e,
                                                  onChange: (v) {
                                                    context
                                                        .read<CityBloc>()
                                                        .add(CityEvent
                                                            .changeItem(
                                                                item: v!));
                                                    context
                                                        .read<RegionBloc>()
                                                        .add(RegionEvent.load(
                                                            id: v.id!));

                                                    cityId = v.id;
                                                    print(cityId);
                                                  },
                                                );
                                              },
                                              initial: () {
                                                return DropDownWidget(
                                                  hint: 'choose_city',
                                                  data: [],
                                                  onChange: (v) {
                                                    context
                                                        .read<CityBloc>()
                                                        .add(CityEvent
                                                            .changeItem(
                                                                item: v!));
                                                  },
                                                );
                                              },
                                              itemChanged: (i, data) {
                                                return DropDownWidget(
                                                  hint: 'choose_city',
                                                  data: data,
                                                  value: i,
                                                  onChange: (v) {
                                                    context
                                                        .read<CityBloc>()
                                                        .add(CityEvent
                                                            .changeItem(
                                                                item: v!));
                                                    context
                                                        .read<RegionBloc>()
                                                        .add(RegionEvent.load(
                                                            id: v.id!));

                                                    cityId = i.id;
                                                  },
                                                );
                                              },
                                              loading: () => DropDownWidget(
                                                    loading: true,
                                                    hint: 'choose_city',
                                                    data: [],
                                                    onChange: (v) {
                                                      context
                                                          .read<CityBloc>()
                                                          .add(CityEvent
                                                              .changeItem(
                                                                  item: v!));
                                                    },
                                                  ),
                                              orElse: () => DropDownWidget(
                                                    hint: 'choose_city',
                                                    data: [],
                                                    onChange: (v) {
                                                      context
                                                          .read<CityBloc>()
                                                          .add(CityEvent
                                                              .changeItem(
                                                                  item: v!));
                                                    },
                                                  ));
                                        },
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      BlocBuilder<RegionBloc, RegionState>(
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                              dataLoaded: (e) {
                                                return DropDownWidget(
                                                  hint: "choose_region",
                                                  data: e,
                                                  onChange: (v) {
                                                    context
                                                        .read<RegionBloc>()
                                                        .add(RegionEvent
                                                            .changeItem(
                                                                item: v!));

                                                    regionId = v.id;
                                                  },
                                                );
                                              },
                                              initial: () {
                                                return DropDownWidget(
                                                  hint: "choose_region",
                                                  data: [],
                                                  onChange: (v) {
                                                    context
                                                        .read<RegionBloc>()
                                                        .add(RegionEvent
                                                            .changeItem(
                                                                item: v!));
                                                  },
                                                );
                                              },
                                              itemChanged: (i, data) {
                                                return DropDownWidget(
                                                  hint: "choose_region",
                                                  data: data,
                                                  value: i,
                                                  onChange: (v) {
                                                    context
                                                        .read<RegionBloc>()
                                                        .add(RegionEvent
                                                            .changeItem(
                                                                item: v!));

                                                    regionId = v.id;
                                                  },
                                                );
                                              },
                                              loading: () => Stack(
                                                    children: [
                                                      DropDownWidget(
                                                        loading: true,
                                                        hint: "choose_region",
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
                                                      ),
                                                    ],
                                                  ),
                                              orElse: () => DropDownWidget(
                                                    hint: "choose_region",
                                                    data: [],
                                                    onChange: (v) {
                                                      context
                                                          .read<RegionBloc>()
                                                          .add(RegionEvent
                                                              .changeItem(
                                                                  item: v!));
                                                    },
                                                  ));
                                        },
                                      ),
                                    ],
                                  ),
                              error: (_) => Column(
                                    children: [
                                      BlocBuilder<CountryBloc, CountryState>(
                                        builder: (context, state) {
                                          return state.when(
                                            initial: () {
                                              return GestureDetector(
                                                onTap: () => context
                                                    .read<CountryBloc>()
                                                    .add(const CountryEvent
                                                        .load()),
                                                child: DropDownWidget(
                                                  hint: 'choose_country',
                                                  data: [],
                                                  onChange: (v) {
                                                    context
                                                        .read<CountryBloc>()
                                                        .add(CountryEvent
                                                            .changeItem(
                                                                item: v!));
                                                  },
                                                ),
                                              );
                                            },
                                            loading: () => DropDownWidget(
                                              loading: true,
                                              hint: 'choose_country',
                                              data: [],
                                              onChange: (v) {
                                                context.read<CountryBloc>().add(
                                                    CountryEvent.changeItem(
                                                        item: v!));
                                              },
                                            ),
                                            dataLoaded: (e) {
                                              return DropDownWidget(
                                                hint: 'choose_country',
                                                data: e,
                                                onChange: (v) {
                                                  context
                                                      .read<CountryBloc>()
                                                      .add(CountryEvent
                                                          .changeItem(
                                                              item: v!));
                                                  context.read<CityBloc>().add(
                                                      CityEvent.load(
                                                          id: v.id!));

                                                  countryId = v.id;
                                                },
                                              );
                                            },
                                            itemChanged: (i, data) {
                                              return DropDownWidget(
                                                hint: 'choose_country',
                                                data: data,
                                                value: i,
                                                onChange: (v) {
                                                  context
                                                      .read<CountryBloc>()
                                                      .add(CountryEvent
                                                          .changeItem(
                                                              item: v!));
                                                  context.read<CityBloc>().add(
                                                      CityEvent.load(
                                                          id: i.id!));

                                                  countryId = v.id;
                                                },
                                              );
                                            },
                                            error: (msg) => GestureDetector(
                                              onTap: () => context
                                                  .read<CountryBloc>()
                                                  .add(const CountryEvent
                                                      .load()),
                                              child: DropDownWidget(
                                                hint: 'choose_country',
                                                data: [],
                                                onChange: (v) {
                                                  context
                                                      .read<CountryBloc>()
                                                      .add(CountryEvent
                                                          .changeItem(
                                                              item: v!));
                                                },
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      BlocBuilder<CityBloc, CityState>(
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                              dataLoaded: (e) {
                                                return DropDownWidget(
                                                  hint: 'choose_city',
                                                  data: e,
                                                  onChange: (v) {
                                                    context
                                                        .read<CityBloc>()
                                                        .add(CityEvent
                                                            .changeItem(
                                                                item: v!));
                                                    context
                                                        .read<RegionBloc>()
                                                        .add(RegionEvent.load(
                                                            id: v.id!));

                                                    cityId = v.id;
                                                    print(cityId);
                                                  },
                                                );
                                              },
                                              initial: () {
                                                return DropDownWidget(
                                                  hint: 'choose_city',
                                                  data: [],
                                                  onChange: (v) {
                                                    context
                                                        .read<CityBloc>()
                                                        .add(CityEvent
                                                            .changeItem(
                                                                item: v!));
                                                  },
                                                );
                                              },
                                              itemChanged: (i, data) {
                                                return DropDownWidget(
                                                  hint: 'choose_city',
                                                  data: data,
                                                  value: i,
                                                  onChange: (v) {
                                                    context
                                                        .read<CityBloc>()
                                                        .add(CityEvent
                                                            .changeItem(
                                                                item: v!));
                                                    context
                                                        .read<RegionBloc>()
                                                        .add(RegionEvent.load(
                                                            id: v.id!));

                                                    cityId = i.id;
                                                  },
                                                );
                                              },
                                              loading: () => DropDownWidget(
                                                    loading: true,
                                                    hint: 'choose_city',
                                                    data: [],
                                                    onChange: (v) {
                                                      context
                                                          .read<CityBloc>()
                                                          .add(CityEvent
                                                              .changeItem(
                                                                  item: v!));
                                                    },
                                                  ),
                                              orElse: () => DropDownWidget(
                                                    hint: 'choose_city',
                                                    data: [],
                                                    onChange: (v) {
                                                      context
                                                          .read<CityBloc>()
                                                          .add(CityEvent
                                                              .changeItem(
                                                                  item: v!));
                                                    },
                                                  ));
                                        },
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      BlocBuilder<RegionBloc, RegionState>(
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                              dataLoaded: (e) {
                                                return DropDownWidget(
                                                  hint: "choose_region",
                                                  data: e,
                                                  onChange: (v) {
                                                    context
                                                        .read<RegionBloc>()
                                                        .add(RegionEvent
                                                            .changeItem(
                                                                item: v!));

                                                    regionId = v.id;
                                                  },
                                                );
                                              },
                                              initial: () {
                                                return DropDownWidget(
                                                  hint: "choose_region",
                                                  data: [],
                                                  onChange: (v) {
                                                    context
                                                        .read<RegionBloc>()
                                                        .add(RegionEvent
                                                            .changeItem(
                                                                item: v!));
                                                  },
                                                );
                                              },
                                              itemChanged: (i, data) {
                                                return DropDownWidget(
                                                  hint: "choose_region",
                                                  data: data,
                                                  value: i,
                                                  onChange: (v) {
                                                    context
                                                        .read<RegionBloc>()
                                                        .add(RegionEvent
                                                            .changeItem(
                                                                item: v!));

                                                    regionId = v.id;
                                                  },
                                                );
                                              },
                                              loading: () => Stack(
                                                    children: [
                                                      DropDownWidget(
                                                        loading: true,
                                                        hint: "choose_region",
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
                                                      ),
                                                    ],
                                                  ),
                                              orElse: () => DropDownWidget(
                                                    hint: "choose_region",
                                                    data: [],
                                                    onChange: (v) {
                                                      context
                                                          .read<RegionBloc>()
                                                          .add(RegionEvent
                                                              .changeItem(
                                                                  item: v!));
                                                    },
                                                  ));
                                        },
                                      ),
                                    ],
                                  ),
                              orElse: () => const SizedBox());
                        },
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      StatefulBuilder(builder: (context, setState) {
                        return Row(
                          children: [
                            const Text("gender").tr(),
                            const Expanded(child: SizedBox()),
                            Checkbox(
                              value: gender == Gender.Male,
                              onChanged: (v) {
                                gender = v! ? Gender.Male : null;
                                setState(() {});
                              },
                            ),
                            const Text("male").tr(),
                            const Expanded(child: SizedBox()),
                            Checkbox(
                              value: gender == Gender.Female,
                              onChanged: (v) {
                                gender = v! ? Gender.Female : null;
                                setState(() {});
                              },
                            ),
                            const Text("female").tr(),
                            const Expanded(child: SizedBox()),
                          ],
                        );
                      }),
                      StatefulBuilder(builder: (context, setState) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (v) {
                                isChecked = v ?? false;
                                setState(() {});
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0.5.h)),
                            ),
                            Expanded(
                              child: const Text(
                                      "i_agree_to_the_terms_and_conditions_and_privacy_policy")
                                  .tr(),
                            )
                          ],
                        );
                      }),
                      SizedBox(
                        height: 2.h,
                      ),
                      BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, state) {
                          return SizedBox(
                            width: double.infinity,
                            child: CostumeButton(
                              onPressed: () async {
                                if (!_formKey.currentState!.validate()) {
                                  return;
                                }
                                if (country.text.isEmpty && countryId == null) {
                                  AlertController.show("",
                                      "choose_country".tr(), TypeAlert.warning);
                                  return;
                                }

                                if (city.text.isEmpty && cityId == null) {
                                  AlertController.show("", "choose_city".tr(),
                                      TypeAlert.warning);
                                  return;
                                }

                                if (region.text.isEmpty && regionId == null) {
                                  AlertController.show("", "choose_region".tr(),
                                      TypeAlert.warning);
                                  return;
                                }

                                if (_formKey.currentState!.validate() &&
                                    gender != null &&
                                    isChecked) {
                                  context.read<AuthBloc>().add(
                                        AuthEvent.register(
                                          request: RegisterCustomer(
                                              email: widget.email,
                                              password: widget.password,
                                              passwordConfirmation:
                                                  widget.passwordConfirmation,
                                              phone:
                                                  "${phoneNumber?.isoCode}-${phoneNumber?.dialCode}-${phone.text.replaceAll(" ", "")}",
                                              lastname: lastName.text,
                                              firstname: firstName.text,
                                              country: country.text,
                                              city: city.text,
                                              region: region.text,
                                              countryID: countryId,
                                              regionId: regionId,
                                              cityId: cityId,
                                              image: image?.path,
                                              gender: gender!.name),
                                        ),
                                      );
                                } else if (gender == null) {
                                  AlertController.show(
                                      "",
                                      "choose_the_gender".tr(),
                                      TypeAlert.warning);
                                  return;
                                } else if (!isChecked) {
                                  AlertController.show(
                                      "",
                                      "agree to the terms and conditions".tr(),
                                      TypeAlert.warning);
                                }
                                //else if (image == null) {
                                //   AlertController.show(
                                //       "",
                                //       "the_image_field_is_required".tr(),
                                //       TypeAlert.warning);
                                // }
                              },
                              child: state.maybeWhen(
                                orElse: () => const Text("sing_up").tr(),
                                loading: () =>
                                    LoadingAnimationWidget.prograssiveDots(
                                        color: AppTheme.primaryColor,
                                        size: 20.sp),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum Gender { Male, Female }
