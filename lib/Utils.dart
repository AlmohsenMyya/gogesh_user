import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'app/locator.dart';
import 'data/local_data_source/local_data_keys.dart';
import 'data/local_data_source/local_data_source.dart';

final ImagePicker picker = ImagePicker();

Future<List<XFile>> pickMultiImage() async {
  List<XFile> adImage = await picker.pickMultiImage();
  print(adImage);
  return adImage;
}

Future<XFile?> pickImage(ImageSource source) async {
  XFile? adImage = await picker.pickImage(source: source);
  return adImage;
}

saveLocale(String language) async {
  await sl<LocalDataSource>().setValue(LocalDataKeys.languageKey, language);
  print(sl<LocalDataSource>().getValue(LocalDataKeys.languageKey));
}

bool isEmailValid(String email) {
  // Regular expression pattern for email validation
  String pattern = r'^[\w-]+(?:\.[\w-]+)*@(?:[\w-]+\.)+[a-zA-Z]{2,7}$';
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(email);
}

String? firstNameValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "please_enter_first_name".tr();
  } else if (value.length < 3) {
    return "the_first_name_must_be_at_least_3_characters".tr();
  } else {
    return null;
  }
}

String? lastNameValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "please_enter_last_name".tr();
  } else if (value.length < 3) {
    return "the_last_name_must_be_at_least_3_characters".tr();
  } else {
    return null;
  }
}

bool isGuest() {
  return sl<LocalDataSource>().getValue(LocalDataKeys.userType) ==
      UserType.gust;
}

String? passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "please_enter_password".tr();
  } else if (!RegExp(
          r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&-])[A-Za-z\d@$!%*?&-]{8,}$')
      .hasMatch(value)) {
    if (value.length < 8) {
      return "Password_must_be_at_least_8_characters_long.".tr();
    }
    return "password_invalid".tr();
  } else {
    return null;
  }
}

Color getRandomColor() {
  final Random random = Random();
  int red = random.nextInt(256);
  int green = random.nextInt(256);
  int blue = random.nextInt(256);

  // Ensure that the generated color is not white
  while (red > 220 && green > 220 && blue > 220) {
    red = random.nextInt(256);
    green = random.nextInt(256);
    blue = random.nextInt(256);
  }

  return Color.fromRGBO(red, green, blue, 0.5);
}

extension IMAGE on String? {
  String toImageOrEmpty() {
    final imageExtensions = ['.jpg', '.jpeg', '.png', '.gif', '.bmp'];
    if (this == null) return "";
    for (final extension in imageExtensions) {
      if (this!.toLowerCase().endsWith(extension)) {
        return this!;
      }
    }
    return "";
  }
}

String getShortenedEmail(String email) {
  List<String> parts = email.split('@');
  String username = parts[0];
  int maxLength = 10; // Adjust this based on your preference

  if (username.length > maxLength) {
    return '${username.substring(0, maxLength)}...';
  }

  return username;
}
