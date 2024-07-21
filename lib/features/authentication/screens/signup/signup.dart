import 'package:queue_manager/common/form_divider.dart';
import 'package:queue_manager/common/social_buttons.dart';
import 'package:queue_manager/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:queue_manager/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(GTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: GSizes.spaceBtwSections,
              ),

              // Form
              const GSignupForm(),
              const SizedBox(
                height: GSizes.spaceBtwSections,
              ),

              //Divider
              GFormDivider(dividerText: GTexts.orSignUpWith.capitalize!),
              const SizedBox(
                height: GSizes.spaceBtwSections / 2,
              ),

              // Social Buttons
              const GSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
