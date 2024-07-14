import 'package:queue_manager/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:queue_manager/utils/theme/custom_themes/appbar_theme.dart';
import 'package:queue_manager/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:queue_manager/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:queue_manager/utils/theme/custom_themes/chip_theme.dart';
import 'package:queue_manager/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:queue_manager/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:queue_manager/utils/theme/custom_themes/text_field_theme.dart';
import 'package:queue_manager/utils/theme/custom_themes/text_theme.dart';

class GAppTheme {
  GAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: GColors.grey,
    brightness: Brightness.light,
    primaryColor: GColors.primary,
    textTheme: GTextTheme.lightTextTheme,
    chipTheme: GChipTheme.lightChipTheme,
    scaffoldBackgroundColor: GColors.white,
    appBarTheme: GAppBarTheme.lightAppBarTheme,
    checkboxTheme: GCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: GBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: GElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: GOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: GTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: GColors.grey,
    brightness: Brightness.dark,
    primaryColor: GColors.primary,
    textTheme: GTextTheme.darkTextTheme,
    chipTheme: GChipTheme.darkChipTheme,
    scaffoldBackgroundColor: GColors.black,
    appBarTheme: GAppBarTheme.darkAppBarTheme,
    checkboxTheme: GCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: GBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: GElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: GOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: GTextFormFieldTheme.darkInputDecorationTheme,
  );
}
