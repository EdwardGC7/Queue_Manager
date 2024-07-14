import 'package:queue_manager/utils/constants/sizes.dart';


import 'package:flutter/material.dart';


import '../../constants/colors.dart';


class GAppBarTheme {

  GAppBarTheme._();


  static const lightAppBarTheme = AppBarTheme(

    elevation: 0,

    centerTitle: false,

    scrolledUnderElevation: 0,

    backgroundColor: Colors.transparent,

    surfaceTintColor: Colors.transparent,

    iconTheme: IconThemeData(color: GColors.black, size: GSizes.iconMd),

    actionsIconTheme: IconThemeData(color: GColors.black, size: GSizes.iconMd),

    titleTextStyle: TextStyle(

        fontSize: 18.0, fontWeight: FontWeight.w600, color: GColors.black),

  );


  static const darkAppBarTheme = AppBarTheme(

    elevation: 0,

    centerTitle: false,

    scrolledUnderElevation: 0,

    backgroundColor: Colors.transparent,

    surfaceTintColor: Colors.transparent,

    iconTheme: IconThemeData(color: GColors.black, size: GSizes.iconMd),

    actionsIconTheme: IconThemeData(color: GColors.white, size: GSizes.iconMd),

    titleTextStyle: TextStyle(

        fontSize: 18.0, fontWeight: FontWeight.w600, color: GColors.white),

  );

}

