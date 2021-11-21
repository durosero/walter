import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:walter/pages/widgets/badge_ubicacion.dart';
import 'package:walter/pages/widgets/boton_suave.dart';

class ConfirmarModal extends StatelessWidget {
  Widget iconoCentral = Container();
  Widget body = Container();
  Widget footer = Container();

  ConfirmarModal(
      {Key? key,
      required this.iconoCentral,
      required this.body,
      required this.footer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            iconoCentral,
            body,
            SizedBox(
              height: 20,
            ),
            footer
          ],
        ));
  }
}
