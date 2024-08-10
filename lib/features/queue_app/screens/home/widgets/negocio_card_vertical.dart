import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:queue_manager/common/styles/shadows.dart';
import 'package:queue_manager/common/widgets/shapes/rounded_container.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:queue_manager/utils/helpers/helper_functions.dart';

class GNegocioCardVertical extends StatelessWidget {
  const GNegocioCardVertical({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [GShadowStyle.verticalCardShadow],
          borderRadius: BorderRadius.circular(GSizes.productImageRadius),
          color: dark ? GColors.darkerGrey : GColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GRoundedContainer(
              height: 180,
              width: 180,
              padding: const EdgeInsets.all(GSizes.sm),
              backgroundColor: dark ? GColors.dark : GColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  Center(
                    child: SizedBox(
                        child: Icon(
                      Iconsax.buildings4,
                      size: 140,
                    )),
                  ),
                ],
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwItems / 2),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
