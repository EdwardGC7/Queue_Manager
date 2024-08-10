import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class GShadowStyle {
  static final verticalCardShadow = BoxShadow(
      color: GColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));

  static final horizontalCardShadow = BoxShadow(
      color: GColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2));
}
