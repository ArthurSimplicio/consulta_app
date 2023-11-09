import 'package:consulta_app/pages/user_page.dart';
import 'package:consulta_app/utils/doctors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agendamento'),),
      body: 
          ListView.builder(
            itemCount: doctors.length,
            itemBuilder: (context, index) {
              final doctor = doctors[index];
              return ListTile(
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(doctor.foto),
                ),
                title: Text(doctor.nome),
                subtitle: Text(doctor.especialidade),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => UserPage(doctor: doctor),
                  ));
                },
              );
            },
          ),
    );
  }
}
