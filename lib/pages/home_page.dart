import 'package:consulta_app/pages/profile_page.dart';
import 'package:consulta_app/pages/schedule_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(82, 180, 197, 1),
        body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 120,
                  color: Colors.blueGrey.shade200,
                  child: Text('Olá e Seja Bem-Vindo ao nosso App!', textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  )),
                ),
                SizedBox(height: 70,),
                Container(
                  child: Column(
                    children:[ GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SchedulePage(),
                        ));
                      },
                      child: Container(
                        width: 260,
                        height: 70,
                        color: Colors.red,
                        child: Row(
                          children: [
                            Image.asset('images/esteto.png', height: 50),
                            Text(
                              'Agende sua\n consulta',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProfilePage (),
                    ));
                  },
                  child: Container(
                    width: 260,
                    height: 70,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 6, right: 10),
                          child: Image.asset(
                            'images/person.png',
                            height: 35,
                          ),
                        ),
                        Text(
                          'Configure sua\n conta pessoal',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                    ]
                  ),
                ),
                
              ],
            ),
          ),
      ),
    );
  }
}
