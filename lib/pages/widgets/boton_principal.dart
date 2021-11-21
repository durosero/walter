import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:walter/config/config.dart';

class BotonPrincipal extends StatelessWidget {
  String titulo =  "";
  Widget icono =  Container();
  BotonPrincipal({Key? key, required this.titulo, required this.icono, this.onPress }) : super(key: key);
  VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(4, 8), // Shadow position
            ),
          ],
          gradient:
              LinearGradient(colors: [colorPrimario, colorTitles])),
     // margin: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation: 0,
              highlightElevation: 0,
              color: Colors.transparent,
              hoverColor: Colors.blue,
              splashColor: Colors.blue,
              height: 60,
              onPressed: onPress,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(titulo,
                      style: TextStyle(color: Colors.white)),
                  icono
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
