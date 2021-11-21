import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:walter/config/config.dart';

class BadgeUbicacion extends StatelessWidget {
  Color  backgroundcolor = Color(0xfff);
  String titulo = "";
  Color? colorIcono =  colorPrimario;
  Color? backgroundcolorBadge ;
  BadgeUbicacion({Key? key, required this.backgroundcolor, required this.titulo,this.colorIcono, this.backgroundcolorBadge}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
      //width: 70,
      height: 50,
      child: Badge(
        toAnimate: false,
        
        badgeColor: backgroundcolorBadge ??  Color(0xffC1D2FF),
        elevation: 0,
        position: BadgePosition.topEnd(end: -20, top: -12),
        badgeContent: Icon(
          Icons.location_on,
          color: colorIcono,
          size: 20,
        ),
        child: Text(
          titulo+" ",
          style: TextStyle(fontSize: 20),
        ),
      ),
      decoration: BoxDecoration(
          color: backgroundcolor,
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
