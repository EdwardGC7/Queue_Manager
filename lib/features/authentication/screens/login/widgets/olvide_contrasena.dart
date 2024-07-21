import 'package:flutter/material.dart';
import 'package:queue_manager/utils/constants/colors.dart';

class OlvideContrasena extends StatefulWidget {
  const OlvideContrasena({super.key});

  @override
  State<OlvideContrasena> createState() => _OlvideContrasenaState();
}

class _OlvideContrasenaState extends State<OlvideContrasena> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: GColors.primaryGreen,
            )
          ],
        ),
      ),
    );
  }
}
