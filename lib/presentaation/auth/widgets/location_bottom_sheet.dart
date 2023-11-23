import 'package:commercial_directory_users/core/use_case/use_case.dart';
import 'package:commercial_directory_users/presentaation/widgets/costume_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:go_router/go_router.dart';

import '../../../app/locator.dart';
import '../../../app/router.dart';
import '../../../app/theme.dart';
import '../../../domain/usecases/location/determine_location_use_case.dart';
import '../../blocs/location/location_bloc.dart';
import '../../profile/screens/profile_screen.dart';

class LocationBottomSheet extends StatelessWidget {
  const LocationBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          const Text(
            "location_options",
            style: TextStyle(
              color: AppTheme.green,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w800,
            ),
          ).tr(),
          const Expanded(child: SizedBox()),
          SizedBox(
            width: double.infinity,
            child: CostumeButton(
              onPressed: () {
                SmartDialog.dismiss();
                context
                    .read<LocationBloc>()
                    .add(const LocationEvent.addEventManually());
              },
              child: const Text("choose_the_address_manually").tr(),
            ),
          ),
          SizedBox(
            height: 4.w,
          ),
          SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  SmartDialog.dismiss();

                  context.read<LocationBloc>().add(const LocationEvent.gps());
                },
                style: TextButton.styleFrom(
                  backgroundColor: AppTheme.green,
                  fixedSize: Size(0, 5.h),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("GPS"),
                    SizedBox(
                      width: 2.w,
                    ),
                    const Icon(Icons.gps_fixed)
                  ],
                ),
              )),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
