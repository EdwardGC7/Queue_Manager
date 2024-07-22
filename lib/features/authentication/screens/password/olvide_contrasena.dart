import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:queue_manager/features/authentication/widgets/create_acount.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/sizes.dart';
import 'package:queue_manager/utils/constants/text_strings.dart';
import 'package:queue_manager/utils/validators/validation.dart';

class OlvideContrasena extends StatefulWidget {
  const OlvideContrasena({super.key});

  @override
  State<OlvideContrasena> createState() => _OlvideContrasenaState();
}

class _OlvideContrasenaState extends State<OlvideContrasena> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          GTexts.tituloOlvideContrasena,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: GSizes.appBarHeight,
          left: GSizes.defaultSpace,
          bottom: GSizes.defaultSpace,
          right: GSizes.defaultSpace,
        ),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: GColors.shadowGreen,
                  ),
                  width: 200,
                  height: 200,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: GColors.primaryGreen,
                  ),
                  width: 175,
                  height: 175,
                  child: const Icon(
                    Icons.lock_open,
                    size: GSizes.xxxl,
                    color: GColors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: GSizes.spaceBtwSections),
            Text(
              GTexts.introEmailSub,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: GSizes.spaceBtwSections),
            TextFormField(
              controller: _emailController,
              validator: GValidator.validateEmail,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: GTexts.email,
              ),
            ),
            const SizedBox(height: GSizes.spaceBtwInputFields),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(GTexts.recuperar),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
