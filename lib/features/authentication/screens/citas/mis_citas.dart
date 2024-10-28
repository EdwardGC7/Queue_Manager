import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/constants/sizes.dart';

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
        shadowColor: Colors.black,
        elevation: 10,
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          const SizedBox(height: GSizes.lg),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (_, index) {
                  return Card(
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        //topRight: Radius.circular(30),
                      ),
                    ),
                    child: ListTile(
                      title: const Text(
                        "Jon Jones Barbershop",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      subtitle: const Text("nota"),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete),
                        color: Colors.red,
                      ),
                      leading: const Text("4"),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
