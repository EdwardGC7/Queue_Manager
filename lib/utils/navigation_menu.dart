import 'package:queue_manager/features/authentication/screens/citas/favorito.dart';
import 'package:queue_manager/features/authentication/screens/citas/mis_citas.dart';
import 'package:queue_manager/features/authentication/screens/citas/profile_page.dart';
import 'package:queue_manager/features/queue_app/screens/home/home.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = GHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            height: 80,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            backgroundColor: darkMode ? GColors.black : Colors.white,
            indicatorColor: darkMode
                ? GColors.white.withOpacity(0.1)
                : Colors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Inicio'),
              NavigationDestination(
                  icon: Icon(Iconsax.calendar_2), label: 'Mis citas'),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: 'Favoritos'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Perfil'),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const MisCitas(),
    const Favorito(),
    const ProfilePage(),
  ];
}
