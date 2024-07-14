import 'package:flutter/material.dart';


import '../../constants/colors.dart';


import '../../constants/sizes.dart';


/// Custom Class for Light & Dark Text Themes


class GCheckboxTheme {

  GCheckboxTheme._(); // To avoid creating instances


  /// Customizable Light Text Theme


  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(

    shape:

        RoundedRectangleBorder(borderRadius: BorderRadius.circular(GSizes.xs)),

    checkColor: MaterialStateProperty.resolveWith((states) {

      if (states.contains(MaterialState.selected)) {

        return GColors.white;

      } else {

        return GColors.black;

      }

    }),

    fillColor: MaterialStateProperty.resolveWith((states) {

      if (states.contains(MaterialState.selected)) {

        return GColors.primary;

      } else {

        return Colors.transparent;

      }

    }),

  );


  /// Customizable Dark Text Theme


  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(

    shape:

        RoundedRectangleBorder(borderRadius: BorderRadius.circular(GSizes.xs)),

    checkColor: MaterialStateProperty.resolveWith((states) {

      if (states.contains(MaterialState.selected)) {

        return GColors.white;

      } else {

        return GColors.black;

      }

    }),

    fillColor: MaterialStateProperty.resolveWith((states) {

      if (states.contains(MaterialState.selected)) {

        return GColors.primary;

      } else {

        return Colors.transparent;

      }

    }),

  );

}

