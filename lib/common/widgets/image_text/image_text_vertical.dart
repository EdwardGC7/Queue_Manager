import 'package:queue_manager/common/widgets/images/g_circular_image.dart';
import 'package:queue_manager/common/widgets/texts/g_brand_title_text.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';

/// A widget that displays an image with text below it in a vertical arrangement.
class GVerticalImageAndText extends StatelessWidget {
  /// Constructor for [GVerticalImageAndText].
  const GVerticalImageAndText({
    Key? key,
    this.onTap,
    required this.image,
    required this.title,
    this.backgroundColor,
    this.isNetworkImage = true,
    this.textColor = GColors.white,
  }) : super(key: key);

  /// The image asset path or URL.
  final String image;

  /// The text to be displayed below the image.
  final String title;

  /// The color of the text.
  final Color textColor;

  /// Flag indicating whether the image is loaded from the network.
  final bool isNetworkImage;

  /// The background color of the widget.
  final Color? backgroundColor;

  /// Callback function when the widget is tapped.
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: GSizes.spaceBtwItems),
        child: Column(
          children: [
            GCircularImage(
              image: image,
              fit: BoxFit.fitWidth,
              padding: GSizes.sm * 1.4,
              isNetworkImage: isNetworkImage,
              backgroundColor: backgroundColor,
              overlayColor: GHelperFunctions.isDarkMode(context)
                  ? GColors.light
                  : GColors.dark,
            ),
            const SizedBox(height: GSizes.spaceBtwItems / 3),
            SizedBox(
                width: 55,
                child: GBrandTitleText(title: title, color: textColor)),
          ],
        ),
      ),
    );
  }
}
