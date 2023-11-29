

// ignore_for_file: file_names

import "package:consulta_app/pages/time.dart";
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
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.asset(
                    doctor.foto,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),              
                Container(padding: EdgeInsets.only(top: 20, bottom: 20), color: Colors.grey.shade300, child: Column(children: [
                  Text(doctor.nome, textAlign: TextAlign.center, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w400),),
                  SizedBox(height: 8,),
                  Text(doctor.desc, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
                SizedBox(height: 10,),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Tarde', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.green),),
                      SizedBox(width: 30,),
                      Text('Noite', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.red),),
                    ],
                  ),
                )
                ])),
                FloatingActionButton.extended(onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Time(),
                  ));
                }, label: Text('Marcar consulta'))
                
              ],
            ),
          ),
        ),
    );
  }
}
