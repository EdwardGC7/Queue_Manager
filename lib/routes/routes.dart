import 'package:get/get.dart';
import 'package:queue_manager/features/authentication/screens/login/login.dart';
import 'package:queue_manager/features/authentication/screens/inicio/Inicio.dart';
import 'package:queue_manager/features/authentication/screens/password/olvide_contrasena.dart';
import 'package:queue_manager/features/authentication/screens/signup/rol_selector.dart';
import 'package:queue_manager/features/authentication/screens/signup/signup.dart';
import 'package:queue_manager/features/authentication/screens/signup/verify_email.dart';

class Routes {
  static const INICIO = '/';
  static const LOGINSCREEN = '/login';
  static const OLVIDECONTRASENA = '/olvideContrasena';
  static const REGISTRARSE = '/registrarse';
  static const ROLSELECTOR = '/rol_selector';
  static const CONFIRMAREMAIL = '/confirmar_email';

  static final routes = [
    GetPage(name: INICIO, page: () => Inicio()),
    GetPage(name: LOGINSCREEN, page: () => const LoginScreen()),
    GetPage(name: OLVIDECONTRASENA, page: () => const OlvideContrasena()),
    GetPage(name: REGISTRARSE, page: () => const SignupScreen()),
    GetPage(name: ROLSELECTOR, page: () => const RolSelectionScreen()),
    GetPage(name: CONFIRMAREMAIL, page: () => const VerifyEmailScreen()),
  ];
}
