import 'package:queue_manager/utils/constants/colors.dart';


import 'package:flutter/material.dart';


import '../../constants/sizes.dart';


class GTextFormFieldTheme {

  GTextFormFieldTheme._();


  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(

    errorMaxLines: 3,


    prefixIconColor: GColors.darkGrey,


    suffixIconColor: GColors.darkGrey,


    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),


    labelStyle: const TextStyle()

        .copyWith(fontSize: GSizes.fontSizeMd, color: GColors.black),


    hintStyle: const TextStyle()

        .copyWith(fontSize: GSizes.fontSizeSm, color: GColors.black),


    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),


    floatingLabelStyle:

        const TextStyle().copyWith(color: GColors.black.withOpacity(0.8)),


    border: const OutlineInputBorder().copyWith(

      borderRadius: BorderRadius.circular(GSizes.inputFieldRadius),

      borderSide: const BorderSide(width: 1, color: GColors.grey),

    ),


    enabledBorder: const OutlineInputBorder().copyWith(

      borderRadius: BorderRadius.circular(GSizes.inputFieldRadius),

      borderSide: const BorderSide(width: 1, color: GColors.grey),

    ),


    focusedBorder: const OutlineInputBorder().copyWith(

      borderRadius: BorderRadius.circular(GSizes.inputFieldRadius),

      borderSide: const BorderSide(width: 1, color: GColors.dark),

    ),


    errorBorder: const OutlineInputBorder().copyWith(

      borderRadius: BorderRadius.circular(GSizes.inputFieldRadius),

      borderSide: const BorderSide(width: 1, color: GColors.warning),

    ),


    focusedErrorBorder: const OutlineInputBorder().copyWith(

      borderRadius: BorderRadius.circular(GSizes.inputFieldRadius),

      borderSide: const BorderSide(width: 2, color: GColors.warning),

    ),

  );


  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(

    errorMaxLines: 2,


    prefixIconColor: GColors.darkGrey,


    suffixIconColor: GColors.darkGrey,


    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),


    labelStyle: const TextStyle()

        .copyWith(fontSize: GSizes.fontSizeMd, color: GColors.white),


    hintStyle: const TextStyle()

        .copyWith(fontSize: GSizes.fontSizeSm, color: GColors.white),


    floatingLabelStyle:

        const TextStyle().copyWith(color: GColors.white.withOpacity(0.8)),


    border: const OutlineInputBorder().copyWith(

      borderRadius: BorderRadius.circular(GSizes.inputFieldRadius),

      borderSide: const BorderSide(width: 1, color: GColors.darkGrey),

    ),


    enabledBorder: const OutlineInputBorder().copyWith(

      borderRadius: BorderRadius.circular(GSizes.inputFieldRadius),

      borderSide: const BorderSide(width: 1, color: GColors.darkGrey),

    ),


    focusedBorder: const OutlineInputBorder().copyWith(

      borderRadius: BorderRadius.circular(GSizes.inputFieldRadius),

      borderSide: const BorderSide(width: 1, color: GColors.white),

    ),


    errorBorder: const OutlineInputBorder().copyWith(

      borderRadius: BorderRadius.circular(GSizes.inputFieldRadius),

      borderSide: const BorderSide(width: 1, color: GColors.warning),

    ),


    focusedErrorBorder: const OutlineInputBorder().copyWith(

      borderRadius: BorderRadius.circular(GSizes.inputFieldRadius),

      borderSide: const BorderSide(width: 2, color: GColors.warning),

    ),

  );

}

