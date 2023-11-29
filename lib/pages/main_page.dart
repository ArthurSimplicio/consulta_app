import 'package:consulta_app/pages/home_page.dart';
import 'package:consulta_app/pages/profile_page.dart';
import 'package:consulta_app/pages/schedule_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const SchedulePage(),
    const ProfilePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(currentIndex: currentIndex, onTap: (index) => setState(() {
        currentIndex = index;
      }), items: [   
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.view_agenda), label: 'Agendamento'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil')
      ], fixedColor: Colors.green.shade200),
    );
  }
}
