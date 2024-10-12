import 'package:flutter/material.dart';
import 'package:queue_manager/utils/constants/colors.dart';

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
        automaticallyImplyLeading: false,
        title: const Text(
          "Citas",
          style: TextStyle(color: GColors.white),
        ),
        centerTitle: true,
        backgroundColor: GColors.primaryGreen,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (_, index) {
          return const Card(
            shadowColor: GColors.primaryGreen,
            elevation: 100,
            child: ListTile(
              title: Text(
                "Jon Barbershop",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("nota"),
              trailing: Text("09:30 AM"),
              leading: Text("4"),
            ),
          );
        },
      ),
    );
  }
}
