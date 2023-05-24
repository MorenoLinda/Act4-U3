import 'package:flutter/material.dart';
import 'package:moreno/citas.dart';
import 'package:moreno/cliente.dart';
import 'package:moreno/mascota.dart';
import 'package:moreno/empleados.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title:
              const Text('La Huellita', style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.purple),
          centerTitle: true,
          bottom: TabBar(
            indicator: BoxDecoration(color: Color(0xffd1d1d1)),
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  child: Text(
                    'Cliente',
                    style: TextStyle(color: Colors.black),
                  )),
              Tab(
                  icon: Icon(
                    Icons.pets,
                    color: Colors.grey,
                  ),
                  child: Text(
                    'Mascota',
                    style: TextStyle(color: Colors.black),
                  )),
              Tab(
                  icon: Icon(
                    Icons.people,
                    color: Colors.grey,
                  ),
                  child: Text(
                    'Empleado',
                    style: TextStyle(color: Colors.black),
                  )),
              Tab(
                  icon: Icon(
                    Icons.date_range,
                    color: Colors.grey,
                  ),
                  child: Text(
                    'Citas',
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Clientes',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                    child: const Text('Formulario'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const Cliente()));
                    },
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mascotas',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                    child: const Text('Formulario'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const Mascota()));
                    },
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Empleados',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                    child: const Text('Formulario'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const Empleados()));
                    },
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Citas',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(fontWeight: FontWeight.bold)),
                    child: const Text('Formulario'),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const Citas()));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
