import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:queue_manager/routes/routes.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:queue_manager/utils/constants/text_strings.dart';

class RolSelectionScreen extends StatefulWidget {
  const RolSelectionScreen({Key? key}) : super(key: key);

  @override
  _RolSelectionScreenState createState() => _RolSelectionScreenState();
}

class _RolSelectionScreenState extends State<RolSelectionScreen>
    with TickerProviderStateMixin {
  int _selectedRole = -1;
  late AnimationController _clientAnimationController;
  late AnimationController _companyAnimationController;

  @override
  void initState() {
    super.initState();
    _clientAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _companyAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  void _onClientPressed() {
    setState(() {
      _selectedRole = 0;
    });
    Get.offNamed(Routes.REGISTRARSE);
  }

  void _onCompanyPressed() {
    setState(() {
      _selectedRole = 1;
    });
    Get.offNamed(Routes.REGISTRARSE);
  }

  @override
  void dispose() {
    _clientAnimationController.dispose();
    _companyAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final backgroundColor = isDarkMode ? GColors.black : GColors.white;
    final iconColor = GColors.primary;
    final textColor = GColors.primary;
    final boxColor = isDarkMode ? GColors.dark : GColors.light;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          // Geometric background design
          Positioned(
            top: -50,
            right: -50,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: GColors.primaryGreen.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: -50,
            left: -50,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: GColors.primaryGreen.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: _onClientPressed,
                          onTapDown: (_) =>
                              _clientAnimationController.forward(),
                          onTapUp: (_) => _clientAnimationController.reverse(),
                          child: ScaleTransition(
                            scale: Tween<double>(begin: 1.0, end: 1.1).animate(
                              CurvedAnimation(
                                parent: _clientAnimationController,
                                curve: Curves.easeInOut,
                              ),
                            ),
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: boxColor,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Iconsax.user,
                                      size: 64, color: iconColor),
                                  const SizedBox(height: 16),
                                  Text(
                                    GTexts.client,
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: textColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: GestureDetector(
                          onTap: _onCompanyPressed,
                          onTapDown: (_) =>
                              _companyAnimationController.forward(),
                          onTapUp: (_) => _companyAnimationController.reverse(),
                          child: ScaleTransition(
                            scale: Tween<double>(begin: 1.0, end: 1.1).animate(
                              CurvedAnimation(
                                parent: _companyAnimationController,
                                curve: Curves.easeInOut,
                              ),
                            ),
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: boxColor,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Iconsax.buildings,
                                      size: 64, color: iconColor),
                                  const SizedBox(height: 16),
                                  Text(
                                    GTexts.business,
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: textColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: GSizes.spaceBtwItems,
                ),
                Text(
                  textAlign: TextAlign.center,
                  GTexts.acountTipe,
                  style: TextStyle(fontSize: 14, color: GColors.textSecondary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
