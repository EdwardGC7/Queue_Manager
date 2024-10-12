import 'package:flutter/material.dart';

class MisCitas extends StatefulWidget {
  const MisCitas({super.key});

  @override
  State<MisCitas> createState() => _MisCitasState();
}

class _MisCitasState extends State<MisCitas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Citas"),
      ),
    );
  }
}
