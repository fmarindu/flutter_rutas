import 'package:flutter/material.dart';
import 'package:rutas/rutas.dart';

class PaginaFacultad extends StatefulWidget {
  const PaginaFacultad
({super.key});

  @override
  State<PaginaFacultad>createState() => _PaginaFacultadState();
}

class _PaginaFacultadState extends State<PaginaFacultad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Facultad'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(rutaClase);
              },
              child: const Text("Ir a Clase")),
          const Text('Al presionar el boton con pushNamed se dirige a la ruta Clase, teniendo en la pila Home/Universidad/Facultad/Clase.\nEl boton back del titulo destruira Facultad y dejará en la pila a Home/Universidad', style: TextStyle(
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