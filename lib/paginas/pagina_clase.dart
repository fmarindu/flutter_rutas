import 'package:flutter/material.dart';
import 'package:rutas/rutas.dart';

class PaginaClase extends StatefulWidget {
  const PaginaClase({super.key});

  @override
  State<PaginaClase> createState() => _PaginaClaseState();
}

class _PaginaClaseState extends State<PaginaClase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clase'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Text("Ir a Home")),
          const Text('Al presionar el boton con popUntil((route) => route.isFirst) se dirige a la ruta Home destruyedo todas las rutas anteriores, dejando en la pila solo a Home.\nEl boton back del titulo destruira Clase y dejará en la pila a Home/Universidad/Facultad', style: TextStyle(
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
