import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/sizes.dart';

class OlvideContrasena extends StatefulWidget {
  const OlvideContrasena({super.key});

  @override
  State<OlvideContrasena> createState() => _OlvideContrasenaState();
}

class _OlvideContrasenaState extends State<OlvideContrasena> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
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
              const Center(
                child: Text(
                  "Por favor introdusca su email para enviarle el link de recuperacion",
                  style: TextStyle(
                      fontSize: GSizes.fontSizeMd, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
