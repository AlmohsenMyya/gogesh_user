import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      //useMaterial3: true,
      textTheme: GoogleFonts.cairoTextTheme(),
      iconTheme: const IconThemeData(
        color: secondaryColor,
      ),
      colorScheme: ColorScheme.fromSwatch(accentColor: secondaryColor),
      scaffoldBackgroundColor: primaryColor,
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: GoogleFonts.cairo(
            fontSize: 14.dp,
            fontWeight: FontWeight.w700,
            color: secondaryColor),
        color: primaryColor,
        elevation: 0,
      ),
      shadowColor: Colors.black,
      // Other theme properties...
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: secondaryColor),
      inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(fontSize: 16.dp),
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          hintStyle: TextStyle(
            color: const Color(0xffcecece),
            fontSize: 14.dp,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 1, color: Color(0xffcbcbcb)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 1, color: secondaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 1, color: Color(0xffcbcbcb)),
          ),
          prefixIconColor: secondaryColor),
      datePickerTheme: const DatePickerThemeData(
          headerBackgroundColor: secondaryColor,
          dayOverlayColor: MaterialStatePropertyAll<Color>(secondaryColor),
          todayBackgroundColor:
              MaterialStatePropertyAll<Color>(secondaryColor)),
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStatePropertyAll(green),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: secondaryColor),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        foregroundColor: Colors.white,
        backgroundColor: secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        textStyle: GoogleFonts.cairo(
          color: Colors.white,
          fontSize: 13.dp,
        ),
      )),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(foregroundColor: secondaryColor)));

  static const Color primaryColor = Color(0xffFFFFFF);
  static const Color green = Color(0xff74C6B8);
  static const Color secondaryColor = Color(0xff191A38);

  static const orange = Color(0xffFF7A45);
}
