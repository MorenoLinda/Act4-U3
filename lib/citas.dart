import 'package:flutter/material.dart';
import 'package:moreno/inicio.dart';

class Citas extends StatelessWidget {
  const Citas({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'La Huellita';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle, style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.purple),
          centerTitle: true,
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Citas',
                  style: TextStyle(fontSize: 28),
                ),
              ),
              TextFormField(
                autofocus: true,
                obscureText: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'ID Empleado',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  prefixIcon: Icon(
                    Icons.format_list_numbered,
                    color: Colors.grey,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tus datos';
                  }
                  return null;
                },
              ),
              TextFormField(
                autofocus: true,
                obscureText: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'ID Cliente',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  prefixIcon: Icon(
                    Icons.format_list_numbered,
                    color: Colors.grey,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tus datos';
                  }
                  return null;
                },
              ),
              TextFormField(
                autofocus: true,
                obscureText: false,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'ID Mascota',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  prefixIcon: Icon(
                    Icons.pets,
                    color: Colors.grey,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tus datos';
                  }
                  return null;
                },
              ),
              TextFormField(
                autofocus: true,
                obscureText: false,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  labelText: 'Fecha Ingreso de la cita',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  prefixIcon: Icon(
                    Icons.date_range,
                    color: Colors.grey,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tus datos';
                  }
                  return null;
                },
              ),
              TextFormField(
                autofocus: true,
                obscureText: false,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  labelText: 'Asunto',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  prefixIcon: Icon(
                    Icons.message,
                    color: Colors.grey,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tus datos';
                  }
                  return null;
                },
              ),
              TextFormField(
                autofocus: true,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Correo electronico',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tus datos';
                  }
                  return null;
                },
              ),
              TextFormField(
                autofocus: true,
                obscureText: false,
                keyboardType: TextInputType.datetime,
                decoration: InputDecoration(
                  labelText: 'Fecha de la cita',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  prefixIcon: Icon(
                    Icons.date_range,
                    color: Colors.grey,
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa tus datos';
                  }
                  return null;
                },
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Procesando información')),
                      );
                    }
                  },
                  child: const Text('Enviar'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle: TextStyle(fontWeight: FontWeight.bold)),
                child: const Text('Volver al inicio!'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const Inicio()));
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
