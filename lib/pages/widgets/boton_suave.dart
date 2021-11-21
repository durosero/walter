import 'package:flutter/material.dart';
import 'package:walter/config/config.dart';

class BotonSuave extends StatelessWidget {
  String titulo =  "";
  Widget icono =  Container();
  VoidCallback? onPress;
  BotonSuave({Key? key, required this.titulo, required this.icono, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsDirectional.only(top: 2, bottom: 2, end: 8, start: 8),
        decoration: BoxDecoration(
          color: colorPrimario.withOpacity(0.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icono,
            SizedBox(width: 5,),
            Container(
                child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation: 0,
              highlightElevation: 0,
              color: Colors.white.withOpacity(0.9),
              hoverColor: Colors.blue,
              splashColor: Colors.blue,
              onPressed: onPress,
              child: Text(titulo,
                  style: TextStyle(color: colorPrimario,fontSize: 11)),
            ))
          ],
        ));
  }
}
