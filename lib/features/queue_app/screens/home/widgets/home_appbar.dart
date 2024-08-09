// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:queue_manager/utils/constants/colors.dart';
// import 'package:queue_manager/utils/constants/text_strings.dart';

// class GHomeAppBar extends StatelessWidget {
//   const GHomeAppBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final userController = Get.put(UserController());
//     return GAppBar(
//       title: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             GTexts.homeAppbarTitle,
//             style: Theme.of(context)
//                 .textTheme
//                 .labelMedium!
//                 .apply(color: GColors.grey),
//           ),
//           Obx(
//             () {
//               // Check if user Profile is still loading
//               if (userController.profileLoading.value) {
//                 // Display a shimmer loader while user profile is being loaded
//                 return const GShimmerEffect(width: 80, height: 15);
//               } else {
//                 // Check if there are no record found
//                 if (userController.user.value.id.isEmpty) {
//                   // Display a message when no data is found
//                   return Text(
//                     'Your Name',
//                     style: Theme.of(context)
//                         .textTheme
//                         .headlineSmall!
//                         .apply(color: GColors.white),
//                   );
//                 } else {
//                   // Display User Name
//                   return Text(
//                     userController.user.value.fullName,
//                     style: Theme.of(context)
//                         .textTheme
//                         .headlineSmall!
//                         .apply(color: GColors.white),
//                   );
//                 }
//               }
//             },
//           ),
//         ],
//       ),
//       actions: [Icon(Iconsax.notification)],
//     );
//   }
// }
