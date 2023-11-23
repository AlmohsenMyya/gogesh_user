import 'package:commercial_directory_users/app/theme.dart';
import 'package:commercial_directory_users/presentaation/blocs/search_result/show_mode_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../assets.dart';
import '../../blocs/offer/offer_bloc.dart';

class ResultsBarWidget extends StatelessWidget {
  const ResultsBarWidget({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    int buildCount = 0;
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.w700, color: AppTheme.green, fontSize: 15),
        ),
        const SizedBox(
          width: 10,
        ),
        BlocBuilder<OfferBloc, OfferState>(
          buildWhen: (previous, current) => buildCount <= 2,
          builder: (context, state) {
            buildCount++;
            return state.maybeWhen(
                orElse: () => const SizedBox(),
                loaded: (data, _, count) => const Text(
                      "results",
                      style: TextStyle(fontSize: 15),
                    ).plural(count ?? 0));
          },
        ),
        const Expanded(child: SizedBox()),
        Builder(builder: (context) {
          return InkWell(
            onTap: () => context.read<ViewModeCubit>().changeViewMode(),
            child: AnimatedSwitcher(
              switchInCurve: Curves.bounceIn,
              switchOutCurve: Curves.bounceOut,
              duration: const Duration(seconds: 1),
              child: BlocBuilder<ViewModeCubit, ViewMode>(
                builder: (context, state) => state == ViewMode.grid
                    ? SvgPicture.asset(
                        Assets.assets_icons_g_mode_svg,
                        width: 20,
                      )
                    : SvgPicture.asset(
                        Assets.assets_icons_v_mode_svg,
                        width: 20,
                      ),
              ),
            ),
          );
        })
      ],
    );
  }
}
