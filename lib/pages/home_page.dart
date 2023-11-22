import 'package:consulta_app/pages/map_view.dart';
import 'package:consulta_app/pages/schedule_page.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MapPage(),
              ));
            },
            child: Container(
              width: double.infinity,
              height: 160,
              color: Colors.grey,
            ),
            
          ),
          Container(width: double.infinity, height: 400, child: GoogleMap(initialCameraPosition: CameraPosition(target: LatLng(0, 0), zoom: 18,)),),
          
        ],
      ),
    );
  }
}
