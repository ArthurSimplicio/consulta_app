

// ignore_for_file: file_names

import "package:consulta_app/utils/doctors.dart";
import "package:flutter/material.dart"; // Certifique-se de importar corretamente

class UserPage extends StatelessWidget {
  final Doctor doctor;

  const UserPage({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(doctor.nome),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                Image.asset(
                  doctor.foto,
                  height: 400,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 16),
                Text(doctor.nome, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)
              ],
            ),
          ),
        ),
    );
  }
}
