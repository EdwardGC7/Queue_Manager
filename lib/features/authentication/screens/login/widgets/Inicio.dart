import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queue_manager/common/social_buttons.dart';
import 'package:queue_manager/features/authentication/screens/login/login.dart';
import 'package:queue_manager/routes/routes.dart';
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
        child: Padding(
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
                      // onPressed: () {
                      onPressed: () => Get.toNamed(Routes.LOGINSCREEN),
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const LoginScreen()),
                      //   );
                      // },
                      child: Text(GTexts.signIn)),
                ),
              ],
            )),
      ),
    );
  }
}
