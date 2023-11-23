import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../../../app/theme.dart';

class CommonQuestionWidget extends StatelessWidget {
  const CommonQuestionWidget(
      {required this.question, required this.answer, super.key});
  final String question;
  final String answer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
        child: ExpansionTile(
          childrenPadding: const EdgeInsets.all(15),
          iconColor: Colors.transparent,
          collapsedIconColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          collapsedShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          textColor: AppTheme.secondaryColor,
          title: Text(
            question,
            style: TextStyle(fontSize: 16.dp),
          ),
          expandedAlignment: Alignment.centerLeft,
          children: [
            Text(
              answer,
              style: TextStyle(fontSize: 13.dp),
            )
          ],
        ),
      ),
    );
  }
}
