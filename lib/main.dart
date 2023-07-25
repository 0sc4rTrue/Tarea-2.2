import 'package:flutter/material.dart';
import 'package:flutter_application_3/shared/constantes.dart';
import 'package:flutter_application_3/shared/not_found.dart';
import 'package:flutter_application_3/shared/rutas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      title: 'Material App',
      initialRoute: Rutas.loginPage.name,
      routes: rutas,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) {
          return const NotFound();
        });
      },
    );
  }
}
