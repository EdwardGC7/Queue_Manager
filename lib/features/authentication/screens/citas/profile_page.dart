import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:queue_manager/utils/constants/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const CircleAvatar(
              radius: 100,
            ),
            const SizedBox(height: 20),
            //---------------------------------------
            itemProfile("Nombre", "Alex Salvadore", CupertinoIcons.person),
            SizedBox(height: 20),
            itemProfile(
                "Correo Electronico", "micorreo@mail.com", CupertinoIcons.mail),
            SizedBox(height: 20),
            itemProfile("Telefono", "809-871-3729", CupertinoIcons.phone),
            SizedBox(height: 20),
            itemProfile("Contraseña", "********", Iconsax.password_check)
          ],
        ),
      ),
    );
  }
}

itemProfile(String title, String subtitle, IconData iconData) {
  return Container(
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
        offset: const Offset(0, 5),
        color: GColors.primaryGreen.withOpacity(.2),
        spreadRadius: 2,
        blurRadius: 10,
      )
    ]),
    child: ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: Icon(iconData),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey,
      ),
      tileColor: Colors.white,
    ),
  );
}
