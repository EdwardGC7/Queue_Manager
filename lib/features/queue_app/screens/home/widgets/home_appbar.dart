import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:queue_manager/common/widgets/appbar/appbar.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/text_strings.dart';

class GHomeAppBar extends StatelessWidget {
  const GHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            GTexts.appbarSlogan,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: GColors.grey),
          ),
          Text(
            GTexts.appName,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: GColors.white),
          ),
        ],
      ),
      actions: [Icon(Iconsax.notification)],
    );
  }
}
