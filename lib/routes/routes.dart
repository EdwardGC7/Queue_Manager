import 'package:get/get.dart';
import 'package:queue_manager/features/authentication/screens/login/login.dart';
import 'package:queue_manager/features/authentication/screens/inicio/Inicio.dart';
import 'package:queue_manager/features/authentication/screens/password/olvide_contrasena.dart';
import 'package:queue_manager/features/authentication/screens/signup/rol_selector.dart';
import 'package:queue_manager/features/authentication/screens/signup/signup.dart';
import 'package:queue_manager/features/authentication/screens/signup/verify_email.dart';
import 'package:queue_manager/features/queue_app/screens/home/business/business_details_screen.dart';
import 'package:queue_manager/features/queue_app/screens/home/business/business_list_screen.dart';

class Routes {
  static const INICIO = '/';
  static const LOGINSCREEN = '/login';
  static const OLVIDECONTRASENA = '/olvideContrasena';
  static const REGISTRARSE = '/registrarse';
  static const ROLSELECTOR = '/rol_selector';
  static const CONFIRMAREMAIL = '/confirmar_email';
  static const LISTANEGOCIOS = '/lista_de_negocios';
  static const BUSINESS_DETAILS = '/detalles_de_negocio';

  static final routes = [
    GetPage(name: INICIO, page: () => Inicio()),
    GetPage(name: LOGINSCREEN, page: () => const LoginScreen()),
    GetPage(name: OLVIDECONTRASENA, page: () => const OlvideContrasena()),
    GetPage(name: REGISTRARSE, page: () => const SignupScreen()),
    GetPage(name: ROLSELECTOR, page: () => const RolSelectionScreen()),
    GetPage(name: CONFIRMAREMAIL, page: () => const VerifyEmailScreen()),
    GetPage(name: LISTANEGOCIOS, page: () => const BusinessListScreen()),
    GetPage(name: BUSINESS_DETAILS, page: () => const BusinessDetailsScreen()),
  ];
}
