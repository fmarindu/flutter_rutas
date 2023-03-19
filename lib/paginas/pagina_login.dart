import 'package:flutter/material.dart';
import 'package:rutas/rutas.dart';

class PaginaLogin extends StatefulWidget {
  const PaginaLogin({super.key});

  @override
  State<PaginaLogin> createState() => _PaginaLoginState();
}

class _PaginaLoginState extends State<PaginaLogin> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed(rutaHome);
              },
              child: const Text("Ingresar a la app")),
          const Text('Al presionar el boton destruye la ruta Login con popAndPushNamed, significa que el primer registro de la pila de rutas va a ser home.', style: TextStyle(
            fontSize: 12
          )),
          ElevatedButton(
              onPressed: () {
                NavigatorState navigatorState = Navigator.of(context);
                debugPrint(navigatorState.toString());
              },
              child: const Text(textoBotonDebug)),
        ],
      ),
    );
  }
}
