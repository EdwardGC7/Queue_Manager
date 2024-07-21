import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/validators/validation.dart';

class GLoginForm extends StatefulWidget {
  const GLoginForm({Key? key}) : super(key: key);

  @override
  _GLoginFormState createState() => _GLoginFormState();
}

class _GLoginFormState extends State<GLoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _hidePassword = true;
  bool _rememberMe = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _hidePassword = !_hidePassword;
    });
  }

  void _toggleRememberMe(bool? value) {
    setState(() {
      _rememberMe = value ?? false;
    });
  }

  void _signIn() {
    if (_formKey.currentState?.validate() ?? false) {
      // Handle sign in logic here
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: GSizes.spaceBtwSections),
        child: Column(
          children: [
            /// Email
            TextFormField(
              controller: _emailController,
              validator: GValidator.validateEmail,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: GTexts.email,
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwInputFields),

            /// Password
            TextFormField(
              obscureText: _hidePassword,
              controller: _passwordController,
              validator: (value) =>
                  GValidator.validateEmptyText('Password', value),
              decoration: InputDecoration(
                labelText: GTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: _togglePasswordVisibility,
                  icon: Icon(
                    _hidePassword ? Iconsax.eye_slash : Iconsax.eye,
                  ),
                ),
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwInputFields / 2),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: _toggleRememberMe,
                    ),
                    const Text(GTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(GTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: GSizes.spaceBtwSections),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _signIn,
                child: const Text(GTexts.signIn),
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwItems),

            /// Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(GTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
