import 'package:get/get.dart';
import 'package:queue_manager/features/authentication/screens/login/login.dart';
import 'package:queue_manager/features/authentication/screens/login/widgets/Inicio.dart';

class Routes {
  static const INICIO = '/';
  static const LOGINSCREEN = '/login';

  static final routes = [
    GetPage(name: INICIO, page: () => Inicio()),
    GetPage(name: LOGINSCREEN, page: () => const LoginScreen()),
  ];
}
