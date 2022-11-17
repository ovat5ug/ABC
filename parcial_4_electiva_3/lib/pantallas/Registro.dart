import 'package:flutter/material.dart';
import 'package:parcial_4_electiva_3/main.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  TextEditingController nombre = TextEditingController();
  TextEditingController apellido = TextEditingController();
  TextEditingController fechaNac = TextEditingController();
  TextEditingController sexo = TextEditingController();
  TextEditingController dui = TextEditingController();
  TextEditingController contrasenha = TextEditingController();

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
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Center(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/avatar/1559025202.gif'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: TextField(
                controller: nombre,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Nombre",
                  hintText: "Ingrese su Nombre",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: TextField(
                controller: apellido,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Apellido",
                  hintText: "Ingrese su Apellido",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: TextField(
                controller: fechaNac,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Fecha de Nacimiento",
                  hintText: "Ingrese su Fecha de Nacimiento",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: TextField(
                controller: sexo,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Sexo",
                  hintText: "Ingrese su Sexo",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: TextField(
                controller: dui,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "DUI",
                  hintText: "Ingrese su DUI",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: TextField(
                controller: contrasenha,
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
              padding: EdgeInsets.only(left: 20, top: 50, right: 20),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    print("enviado");
                    print(nombre.text);
                    print(apellido.text);
                    print(fechaNac.text);
                    print(sexo.text);
                    print(dui.text);
                    print(contrasenha.text);
                  },
                  child: Text('Enviar'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
