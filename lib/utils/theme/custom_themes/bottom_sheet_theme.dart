import 'package:queue_manager/utils/constants/colors.dart';

import 'package:flutter/material.dart';


class GBottomSheetTheme {

  GBottomSheetTheme._();


  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(

    showDragHandle: true,

    backgroundColor: GColors.white,

    modalBackgroundColor: GColors.white,

    constraints: const BoxConstraints(minWidth: double.infinity),

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

  );


  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(

    showDragHandle: true,

    backgroundColor: GColors.black,

    modalBackgroundColor: GColors.black,

    constraints: const BoxConstraints(minWidth: double.infinity),

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

  );

}

