import 'package:flutter/material.dart';
import 'package:queue_manager/utils/constants/colors.dart';
import 'package:queue_manager/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: GAppTheme.lightTheme,
      darkTheme: GAppTheme.darkTheme,
      home: Scaffold(
        backgroundColor: GColors.primary,
        appBar: AppBar(
          title: Text('Bitch Please, Nerver give up'),
        ),
      ),
    );
  }
}
