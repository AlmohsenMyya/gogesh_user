import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/presentaation/blocs/filter/filter_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/enums/enums.dart';

class FilterWidget<T extends FilterCubit<ServiceTypeEnum>>
    extends StatelessWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<T, ServiceTypeEnum?>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FilterChip(
              label: Text(
                "all",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: state == null ? Colors.white : Colors.black),
              ).tr(),
              selectedColor: AppTheme.orange,
              backgroundColor: Colors.transparent,
              selected: state == null,
              showCheckmark: false,
              shape: StadiumBorder(
                  side: BorderSide(
                width: 1,
                color: state == null ? Colors.transparent : Colors.grey,
              )),
              onSelected: (bool value) {
                context.read<T>().changeItem(null);
              },
            ),
            FilterChip(
              label: Text(
                "licensed_companies",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: state == ServiceTypeEnum.Company
                        ? Colors.white
                        : Colors.black),
              ).tr(),
              backgroundColor: Colors.transparent,
              selectedColor: AppTheme.orange,
              selected: state == ServiceTypeEnum.Company,
              showCheckmark: false,
              shape: StadiumBorder(
                  side: BorderSide(
                width: 1,
                color: state == ServiceTypeEnum.Company
                    ? Colors.transparent
                    : Colors.grey,
              )),
              onSelected: (bool value) {
                context.read<T>().changeItem(ServiceTypeEnum.Company);
              },
            ),
            FilterChip(
              label: Text(
                "personal_projects",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: state == ServiceTypeEnum.Personal
                        ? Colors.white
                        : Colors.black),
              ).tr(),
              backgroundColor: Colors.transparent,
              selected: state == ServiceTypeEnum.Personal,
              selectedColor: AppTheme.orange,
              showCheckmark: false,
              shape: StadiumBorder(
                  side: BorderSide(
                width: 1,
                color: state == ServiceTypeEnum.Personal
                    ? Colors.transparent
                    : Colors.grey,
              )),
              onSelected: (bool value) {
                context.read<T>().changeItem(ServiceTypeEnum.Personal);
              },
            ),
          ],
        );
      },
    );
  }
}
