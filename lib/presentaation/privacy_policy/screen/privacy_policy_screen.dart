import 'package:commercial_directory_users/app/locator.dart';
import 'package:commercial_directory_users/presentaation/privacy_policy/bloc/privacy_policy_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletons/skeletons.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PrivacyPolicyBloc(getPrivacyUseCase: sl())
        ..add(PrivacyPolicyEvent.load()),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("privacy_policy").tr(),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<PrivacyPolicyBloc, PrivacyPolicyState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => Center(child: Text("empty")),
                  dataloaded: (data) => SingleChildScrollView(
                      child: Text(
                    data,
                  )),
                  empty: () => Center(child: Text("empty")),
                  error: () => Center(child: Text("eroor")),
                  loading: () => SkeletonParagraph(
                    style: SkeletonParagraphStyle(
                        lines: 30,
                        spacing: 10,
                        lineStyle: SkeletonLineStyle(
                          randomLength: true,
                          height: 10,
                          borderRadius: BorderRadius.circular(8),
                          minLength: MediaQuery.of(context).size.width / 2,
                        )),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
