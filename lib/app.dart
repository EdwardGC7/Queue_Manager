import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:queue_manager/features/authentication/screens/login/login.dart';
import 'package:queue_manager/features/authentication/screens/inicio/Inicio.dart';
import 'package:queue_manager/routes/routes.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: GAppTheme.lightTheme,
      darkTheme: GAppTheme.darkTheme,
      initialRoute: Routes.INICIO,
      getPages: Routes.routes,
      // home: Inicio(),
      // home: Scaffold(
      //   backgroundColor: GColors.primaryGreen,
      //   appBar: AppBar(
      //     title: Text(
      //       'Bitch Please, Nerver give up',
      //       style: TextStyle(
      //           fontFamily: 'Poppins',
      //           fontSize: 25,
      //           fontWeight: FontWeight.w300),
      //     ),
      //   ),
      // ),
    );
  }
}
