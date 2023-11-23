import 'package:commercial_directory_users/app/theme.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class HomeFilterWidget<T extends dynamic> extends StatelessWidget {
  const HomeFilterWidget(
      {this.title,
      required this.hint,
      Key? key,
      this.value,
      required this.data,
      required this.onChange,
      this.loading = false})
      : super(key: key);
  final String? title;
  final String hint;
  final void Function(T?) onChange;
  final T? value;
  final List<T> data;
  final bool loading;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          title == null
              ? const SizedBox()
              : Text(
                  title!,
                  style:
                      TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w500),
                ).tr(),
          const Expanded(child: SizedBox()),
          DropdownButtonHideUnderline(
            child: DropdownButton2<T>(
              isExpanded: true,
              hint: loading
                  ? SizedBox(
                      height: 2.h,
                      width: 2.h,
                      child: const CircularProgressIndicator(),
                    )
                  : Text(
                      hint,
                      style: TextStyle(fontSize: 12.dp, color: Colors.black26),
                    ).tr(),
              items: data
                  .map((e) => DropdownMenuItem<T>(
                        value: e,
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            e.name.toString().toLowerCase().tr(),
                            style: TextStyle(fontSize: 14.dp),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ))
                  .toList(),
              value: value,
              onChanged: onChange,
              buttonStyleData: ButtonStyleData(
                height: 40,
                width: 220,
                padding: const EdgeInsets.only(left: 14, right: 14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 40,
              ),
              iconStyleData: const IconStyleData(
                icon: Icon(
                  Icons.keyboard_arrow_down_outlined,
                ),
                openMenuIcon: Icon(Icons.keyboard_arrow_up_outlined),
              ),
              dropdownStyleData: DropdownStyleData(
                  maxHeight: 200,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: MaterialStateProperty.all(6),
                    thumbVisibility: MaterialStateProperty.all(true),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
