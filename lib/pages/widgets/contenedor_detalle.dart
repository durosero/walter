import 'package:flutter/material.dart';
import 'package:walter/config/config.dart';

class ContenedorDetalle extends StatelessWidget {
  const ContenedorDetalle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsetsDirectional.all(15),
            margin: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.blueAccent.withOpacity(0.5)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Especificaciones",
                  style: TextStyle(color: colorPrimario),
                ),
                Text(
                  "C. C. Domo - Local 230",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
