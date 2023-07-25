import 'package:flutter/material.dart';
import 'package:flutter_application_3/shared/constantes.dart';
import 'package:flutter_application_3/widgets/input_form.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final correoController = TextEditingController();
  final contraseniaController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text(
            'Iniciar sesión',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Image(
                image: AssetImage('assets/login.png'),
                width: 200,
              ),
              const SizedBox(
                height: 100,
              ),
              InputForm(
                label: 'Ingrese su correo',
                icon: Icons.email,
                type: TextInputType.emailAddress,
                controller: correoController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ingrese un correo';
                  }
                  if (value != 'ovasquezo@unah.hn') {
                    return 'Ingrese un correo valido';
                  }

                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              InputForm(
                label: 'Ingrese una contraseña',
                icon: Icons.password,
                obscureText: true,
                mostrarBoton: true,
                controller: contraseniaController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Ingrese la contraseña';
                  }
                  if (value != '20202001451') {
                    return 'Ingrese una contraseña valida';
                  }
                  return null;
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          if (formKey.currentState!.validate()) {
            Navigator.pushNamed(context, Rutas.bienvenidaPage.name);
          } else {
            const snackBar = SnackBar(
              content: Text(
                'La contraseña o correo son incorrectos',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.blueAccent,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: const Icon(Icons.login),
      ),
    );
  }
}
