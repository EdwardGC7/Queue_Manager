import 'package:queue_manager/utils/constants/image_strings.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:queue_manager/utils/constants/text_strings.dart';
import 'package:queue_manager/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class GLoginHeader extends StatelessWidget {
  const GLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? GImages.lightAppLogo : GImages.darkAppLogo),
        ),
        Text(
          GTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: GSizes.sm,
        ),
        Text(
          GTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}
