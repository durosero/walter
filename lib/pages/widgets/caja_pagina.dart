import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:walter/config/config.dart';

class CajaPagina extends StatelessWidget {
  const CajaPagina({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: FaIcon(FontAwesomeIcons.boxOpen),
      decoration: BoxDecoration(
          color:  colorPrimario.withOpacity(0.9),
          border: Border.all(color: Colors.blueAccent.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(30)),
    );
  }
}