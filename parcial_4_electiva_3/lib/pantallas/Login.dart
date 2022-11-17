import 'package:flutter/material.dart';
import 'package:parcial_4_electiva_3/main.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usuario = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ingrese Login"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(30),
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/avatar/hi-robot.gif'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: usuario,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Usuario",
                  hintText: "Ingrese su Usuario",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Contraseña",
                  hintText: "Ingrese su Contraseña",
                ),
              ),
            ), //BOTON VALIDACION
            Padding(
              padding: EdgeInsets.only(left: 20, top: 50, right: 10),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Login())); //
                    print(usuario.text);
                    print(password.text);
                  },
                  child: Text('Iniciar Session'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
