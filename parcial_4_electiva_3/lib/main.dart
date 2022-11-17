import 'package:flutter/material.dart';
import 'package:parcial_4_electiva_3/pantallas/Login.dart';
import 'package:parcial_4_electiva_3/pantallas/Registro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pantalla(),
    );
  }
}

class Pantalla extends StatefulWidget {
  const Pantalla({super.key});

  @override
  State<Pantalla> createState() => _PantallaState();
}

class _PantallaState extends State<Pantalla> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bienvenidos a la casa de usted'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20, top: 50, right: 10),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => Login())); //invoca el Login()
                    },
                    child: Text('Entrar'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20, right: 10),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  Registro())); //invoca el Registro()
                    },
                    child: Text('Registrarse'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
