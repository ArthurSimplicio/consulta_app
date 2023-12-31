import 'dart:io';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:consulta_app/services/autenticacao_servico.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  XFile? foto;

  Future pegarFoto() async {
    final ImagePicker picker = ImagePicker();

    try {
      XFile? file = await picker.pickImage(source: ImageSource.gallery);
      if (file != null) {
        setState(() {
          foto = file;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            GestureDetector(
              onLongPress: () => pegarFoto(),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: foto != null
                    ? Image.file(
                        File(foto!.path),
                        fit: BoxFit.cover,
                      )
                    : Image.asset('images/Arthur.jpeg')
              ),
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.edit), labelText: 'Email'),
              ),
            ),
            SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.edit), labelText: 'Senha'),
                )),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 280,
              child: ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(15)),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
                onPressed: () {
                  AutenticacaoServico().deslogar();
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.logout),
                      Text(
                        'Sair',
                      ),
                    ]),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 280,
              child: ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(15)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                    textStyle:
                        MaterialStateProperty.all(TextStyle(color: Colors.red)),
                    foregroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.warning,
                    animType: AnimType.bottomSlide,
                    title: "Exlusão",
                    desc: 'Quer excluir sua conta?',
                    btnOkOnPress: () {
                      AutenticacaoServico().excluirConta();
                      AutenticacaoServico().deslogar();
                    },
                    btnCancelOnPress: () {},
                  ).show();
                },
                child: Text(
                  'Exluir conta',
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
