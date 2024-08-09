import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:queue_manager/common/widgets/images/g_rounded_image.dart';
import 'package:queue_manager/common/widgets/shapes/circular_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

/// Widget to display a promo slider using local images.
class GPromoSlider extends StatefulWidget {
  const GPromoSlider({super.key});

  @override
  _GPromoSliderState createState() => _GPromoSliderState();
}

class _GPromoSliderState extends State<GPromoSlider> {
  int _currentIndex = 0;

  // List of local images for the promo slider
  final List<String> _banners = [
    'assets/images/banners/banner_1.jpg',
    'assets/images/banners/banner_2.jpg',
    'assets/images/banners/banner_3.jpg',
  ];

  void _updatePageIndicator(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => _updatePageIndicator(index),
          ),
          items: _banners.map((imagePath) {
            return GRoundedImage(
              imageUrl: imagePath,
              isNetworkImage: false,
              onPressed: () {
                // Acción a realizar al presionar la imagen
              },
            );
          }).toList(),
        ),
        const SizedBox(height: GSizes.spaceBtwItems),
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Display page indicators based on the number of banners
              for (int i = 0; i < _banners.length; i++)
                GCircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor:
                      _currentIndex == i ? GColors.primary : GColors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
