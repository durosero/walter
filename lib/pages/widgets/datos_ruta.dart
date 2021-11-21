import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DatosRuta extends StatelessWidget {
  DatosRuta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Servicio N°"),
              Text(
                "FWP34",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [Icon(Icons.location_on, color: Colors.white.withOpacity(0.5),), Text(" Distancia 4.1 Km", style: TextStyle(color: Colors.white.withOpacity(0.5)),)],
              ),
              Text("|", style: TextStyle(color: Colors.white.withOpacity(0.5)),),

              Row(
                children: [Icon(Icons.access_time, color:Colors.white.withOpacity(0.5) ,),  Text(" Tiempo 23:48", style: TextStyle(color: Colors.white.withOpacity(0.5)),)],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
