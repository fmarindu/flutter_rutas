import 'package:flutter/material.dart';
import 'package:rutas/rutas.dart';

class PaginaHome extends StatefulWidget {
  const PaginaHome({super.key,});

  @override
  State<PaginaHome> createState() => _PaginaHomeState();
}

class _PaginaHomeState extends State<PaginaHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        //automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(rutaUniversidad);
              },
              child: const Text("Ir a Universidad")),
          const Text('Al presionar el boton con pushNamed se dirige a la ruta Universidad, teniendo en la pila Home/Universidad', style: TextStyle(
            fontSize: 12
          )),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(rutaLogin);
              },
              child: const Text("Ir a login")),
          const Text('Al presionar el boton con pushReplacementNamed se dirige a la ruta login, destruyendo Home y quedando en la pila solo Login', style: TextStyle(
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