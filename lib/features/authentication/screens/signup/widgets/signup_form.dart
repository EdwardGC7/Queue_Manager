import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/validators/validation.dart';
import 'terms_conditions_checkbox.dart';

class GSignupForm extends StatefulWidget {
  const GSignupForm({super.key});

  @override
  _GSignupFormState createState() => _GSignupFormState();
}

class _GSignupFormState extends State<GSignupForm> {
  final GlobalKey<FormState> _signupFormKey = GlobalKey<FormState>();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _hidePassword = true;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _signup() {
    if (_signupFormKey.currentState!.validate()) {
      // Implement signup logic here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signupFormKey,
      child: Column(
        children: [
          const SizedBox(height: GSizes.spaceBtwSections),

          /// First & Last Name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _firstNameController,
                  validator: (value) =>
                      GValidator.validateEmptyText('First name', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: GTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(width: GSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  controller: _lastNameController,
                  validator: (value) =>
                      GValidator.validateEmptyText('Last name', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: GTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(height: GSizes.spaceBtwInputFields),

          /// Username
          TextFormField(
            controller: _usernameController,
            validator: GValidator.validateUsername,
            expands: false,
            decoration: const InputDecoration(
                labelText: GTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(height: GSizes.spaceBtwInputFields),

          /// Email
          TextFormField(
            controller: _emailController,
            validator: GValidator.validateEmail,
            decoration: const InputDecoration(
                labelText: GTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(height: GSizes.spaceBtwInputFields),

          /// Phone Number
          TextFormField(
            controller: _phoneNumberController,
            validator: GValidator.validatePhoneNumber,
            decoration: const InputDecoration(
                labelText: GTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(height: GSizes.spaceBtwInputFields),

          /// Password
          TextFormField(
            controller: _passwordController,
            validator: GValidator.validatePassword,
            obscureText: _hidePassword,
            decoration: InputDecoration(
              labelText: GTexts.password,
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _hidePassword = !_hidePassword;
                  });
                },
                icon: Icon(_hidePassword ? Iconsax.eye_slash : Iconsax.eye),
              ),
            ),
          ),
          const SizedBox(height: GSizes.spaceBtwSections),

          /// Terms&Conditions Checkbox
          const GTermsAndConditionCheckbox(),
          const SizedBox(height: GSizes.spaceBtwSections),

          /// Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: _signup, child: const Text(GTexts.createAccount)),
          ),
        ],
      ),
    );
  }
}
