import 'package:flutter/material.dart';
import 'package:rutas/paginas/pagina_clase.dart';
import 'package:rutas/paginas/pagina_facultad.dart';
import 'package:rutas/paginas/pagina_home.dart';
import 'package:rutas/paginas/pagina_login.dart';
import 'package:rutas/paginas/pagina_universidad.dart';
import 'package:rutas/rutas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: rutaLogin,
      routes: getRoutes(context),
    );
  }

  static getRoutes(context) {
    return <String, WidgetBuilder>{
      rutaLogin: (context) => const PaginaLogin(),
      rutaHome: (context) => const PaginaHome(),
      rutaUniversidad: (context) => const PaginaUniversidad(),
      rutaFacultad: (context) => const PaginaFacultad(),
      rutaClase: (context) => const PaginaClase(),
    };
  }
}
