import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queue_manager/common/social_buttons.dart';
import 'package:queue_manager/features/authentication/screens/login/login.dart';
import 'package:queue_manager/features/authentication/widgets/create_acount.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:queue_manager/utils/constants/text_strings.dart';

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              decoration: const BoxDecoration(
                color: GColors.primaryGreen,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(800, 800),
                ),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: GSizes.appBarHeight,
                    left: GSizes.defaultSpace,
                    bottom: GSizes.defaultSpace,
                    right: GSizes.defaultSpace,
                  ),
                  child: Icon(
                    Icons.real_estate_agent,
                    color: GColors.white,
                    size: 100,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: GSizes.appBarHeight,
                left: GSizes.defaultSpace,
                bottom: GSizes.defaultSpace,
                right: GSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()),
                          );
                        },
                        child: const Text(GTexts.signIn)),
                  ),
                  const SizedBox(height: GSizes.spaceBtwItems),
                  const CreateAcountButton(),
                  const SizedBox(height: GSizes.spaceBtwItems),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        GTexts.guessAccess,
                        style: TextStyle(
                            fontSize: GSizes.fontSizeLg,
                            color: GColors.primaryGreen,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
