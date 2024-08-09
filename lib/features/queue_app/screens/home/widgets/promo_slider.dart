// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../../../utils/constants/colors.dart';
// import '../../../../../utils/constants/sizes.dart';

// /// Widget to display a promo slider using GetX state management.
// class GPromoSlider extends StatelessWidget {
//   const GPromoSlider({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Get instance of BannerController using GetX
//     final controller = Get.put(BannerController());

//     // Use Obx widget to automatically rebuild the UI when banners state changes
//     return Obx(
//       () {
//         // Loader
//         if (controller.bannersLoading.value)
//           return const GShimmerEffect(width: double.infinity, height: 190);

//         // No data found
//         if (controller.banners.isEmpty) {
//           return const Center(child: Text('No Data Found!'));
//         } else {
//           /// Record Found! 🎊
//           // Display CarouselSlider with banners and page indicator
//           return Column(
//             children: [
//               CarouselSlider(
//                 options: CarouselOptions(
//                   viewportFraction: 1,
//                   onPageChanged: (index, _) =>
//                       controller.updatePageIndicator(index),
//                 ),
//                 items: controller.banners
//                     .map(
//                       (banner) => GRoundedImage(
//                         imageUrl: banner.imageUrl,
//                         isNetworkImage: true,
//                         onPressed: () => Get.toNamed(banner.targetScreen),
//                       ),
//                     )
//                     .toList(),
//               ),
//               const SizedBox(height: GSizes.spaceBtwItems),
//               Center(
//                 child: Obx(
//                   () => Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       // Display page indicators based on the number of banners
//                       for (int i = 0; i < controller.banners.length; i++)
//                         GCircularContainer(
//                           width: 20,
//                           height: 4,
//                           margin: const EdgeInsets.only(right: 10),
//                           backgroundColor:
//                               controller.carousalCurrentIndex.value == i
//                                   ? GColors.primary
//                                   : GColors.grey,
//                         ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           );
//         }
//       },
//     );
//   }
// }
