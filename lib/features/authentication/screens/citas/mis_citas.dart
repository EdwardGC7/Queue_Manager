import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (_, index) {
            return Card(
              color: Colors.white70,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  side: BorderSide(
                    width: 1,
                    color: GColors.primaryGreen,
                  )),
              child: ListTile(
                title: const Text(
                  "Jon Barbershop",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("nota"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                ),
                leading: Text("4"),
              ),
            );
          },
        ),
      ),
    );
  }
}
