import 'package:flutter/material.dart';
import 'package:moreno/cliente.dart';
import 'package:moreno/inicio.dart';
import 'package:moreno/mascota.dart';
import 'package:moreno/empleados.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'La Huellita',
    initialRoute: '/primera',
    routes: {
      '/primera': (context) => const Inicio(),
      '/segunda': (context) => const Cliente(),
      '/tercera': (context) => const Mascota(),
      '/cuarta': (context) => const Empleados(),
    },
  ));
}
