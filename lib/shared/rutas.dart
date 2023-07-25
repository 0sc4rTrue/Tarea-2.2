import 'package:flutter_application_3/pages/bienvenida_page.dart';
import '../pages/login_page.dart';
import 'constantes.dart';

final rutas = {
  Rutas.loginPage.name: (context) => LoginPage(),
  Rutas.bienvenidaPage.name: (context) => const Bienvenida(),
};
