import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queue_manager/routes/routes.dart';
import 'package:queue_manager/utils/constants/text_strings.dart';

class CreateAcountButton extends StatefulWidget {
  const CreateAcountButton({super.key});

  @override
  State<CreateAcountButton> createState() => _CreateAcountButtonState();
}

class _CreateAcountButtonState extends State<CreateAcountButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () => Get.toNamed(Routes.ROLSELECTOR),
        child: const Text(GTexts.createAccount),
      ),
    );
  }
}
