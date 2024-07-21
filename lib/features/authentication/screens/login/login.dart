import 'package:get/get.dart';
import 'package:queue_manager/common/form_divider.dart';
import 'package:queue_manager/common/social_buttons.dart';
import 'package:queue_manager/features/authentication/screens/login/widgets/login_form.dart';
import 'package:queue_manager/features/authentication/screens/login/widgets/login_header.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:queue_manager/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:queue_manager/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
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
              //Logo, title, subtitle
              const GLoginHeader(),

              const GLoginForm(),

              //Divider
              GFormDivider(dividerText: GTexts.orSignInWith.capitalize!),

              const SizedBox(
                height: GSizes.spaceBtwItems,
              ),

              //Footer
              const GSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
