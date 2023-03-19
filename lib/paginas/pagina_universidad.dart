import 'package:flutter/material.dart';
import 'package:rutas/rutas.dart';

class PaginaUniversidad extends StatefulWidget {
  const PaginaUniversidad({super.key});

  @override
  State<PaginaUniversidad> createState() => _PaginaUniversidadState();
}

class _PaginaUniversidadState extends State<PaginaUniversidad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Universidad'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(rutaFacultad);
              },
              child: const Text("Ir a Facultad")),
          const Text('Al presionar el boton con pushNamed se dirige a la ruta Facultad, teniendo en la pila Home/Universidad/Facultad.\nEl boton back del titulo destruira Universidad y dejará en la pila solo a home', style: TextStyle(
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
