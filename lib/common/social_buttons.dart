import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class GSocialButtons extends StatelessWidget {
  const GSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Google Button
        Container(
          padding: const EdgeInsets.all(GSizes.xs),
          decoration: BoxDecoration(
              border: Border.all(color: GColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                width: GSizes.iconMd + 4,
                height: GSizes.iconMd + 4,
                image: AssetImage(GImages.google)),
          ),
        ),
        const SizedBox(width: GSizes.spaceBtwItems),
      ],
    );
  }
}
