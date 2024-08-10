import 'package:flutter/material.dart';
import 'package:queue_manager/utils/constants/sizes.dart';

class GSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: GSizes.appBarHeight,
    left: GSizes.defaultSpace,
    bottom: GSizes.defaultSpace,
    right: GSizes.defaultSpace,
  );
}
