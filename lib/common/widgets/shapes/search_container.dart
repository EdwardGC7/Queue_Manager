import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:queue_manager/utils/device/device_utility.dart';
import 'package:queue_manager/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class GSearchContainer extends StatelessWidget {
  const GSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: GSizes.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: GDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(GSizes.md),
          decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? GColors.dark
                    : GColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: GColors.grey) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: GColors.darkerGrey),
              const SizedBox(width: GSizes.spaceBtwItems),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
