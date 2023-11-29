import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Time extends StatefulWidget {
  const Time({super.key});
   

  @override
  State<Time> createState() => _TimeState();
  
}

class _TimeState extends State<Time> {
   

  DateTime today = DateTime.now();
  final now = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) async {
    Intl.defaultLocale = 'pt_BR';
   await initializeDateFormatting('pt_BR', '');
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 15,),
          Text('Dia selecionado = ' + today.toString().split(' ')[0], style: TextStyle(fontSize: 28),),
          SizedBox(height: 15,),
          TableCalendar(
            locale: 'pt_BR',
            rowHeight: 47,
            focusedDay: DateTime.utc(2023, 11, 23),
            firstDay: DateTime.utc(2020, 01, 01),
            lastDay: DateTime.utc(2027, 12, 31),
            selectedDayPredicate: (day) => isSameDay(day, today),
            onDaySelected: _onDaySelected,
          )
        ],
      ),
    );
  }
}
