import 'package:consulta_app/services/autenticacao_servico.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            CircleAvatar(radius: 60, backgroundImage: AssetImage('images/Arthur.jpeg'), ),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(suffixIcon: Icon(Icons.edit), labelText: 'Email'),
              ),
            ),
            SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(suffixIcon: Icon(Icons.edit), labelText: 'Senha'),
                )),
            ElevatedButton(
              onPressed: () {
                AutenticacaoServico().deslogar();
              },
              child: Text(
                'Sair',
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
