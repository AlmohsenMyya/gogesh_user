import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/presentaation/blocs/offer/offer_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/locator.dart';
import '../../sectors/widgets/sectors_offer_widget.dart';

class LastVisitedOffers extends StatelessWidget {
  const LastVisitedOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OfferBloc(sl(), sl(), sl(), sl())
        ..add(const OfferEvent.loadRequestedOffers(filter: Filter())),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('previously_requested_offers').tr(),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (ctx, index) {
                        return Text("data");
                        // return SectorsOfferWidget();
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
