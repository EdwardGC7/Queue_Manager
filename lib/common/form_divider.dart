import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class GFormDivider extends StatelessWidget {
  const GFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: dark ? GColors.darkGrey : GColors.grey,
          thickness: 0.5,
          indent: 60.0,
          endIndent: 5.0,
        )),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? GColors.darkGrey : GColors.grey,
            thickness: 0.5,
            indent: 5.0,
            endIndent: 60.0,
          ),
        )
      ],
    );
  }
}
