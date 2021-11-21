import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:walter/config/config.dart';
import 'package:walter/pages/widgets/badge_ubicacion.dart';
import 'package:walter/pages/widgets/boton_suave.dart';
import 'package:walter/pages/widgets/caja_pagina.dart';
import 'package:walter/pages/widgets/confirmar_modal.dart';
import 'package:walter/pages/widgets/datos_ruta.dart';
import 'package:walter/pages/widgets/fondo_pagina.dart';
import 'package:walter/pages/widgets/header.dart';

class DomicilioConfirmar2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          FondoPagina(),
          Column(
            children: [
              Header(
                  child: Text(
                "Domicilio",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
              SizedBox(height: 20),
              CajaPagina(),
              SizedBox(height: 10),
              DatosRuta(),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ConfirmarModal(
                  iconoCentral: BadgeUbicacion(
                    backgroundcolor: Color(0xffED6C1D),
                    titulo: "B",
                    colorIcono: Color(0xffED6C1D),
                    backgroundcolorBadge: Color(0xffFBDBC7),
                  ),
                  body: _body(),
                  footer: _footer(),
                ),
              )
            ],
          )
        ],
      )),
    );
  }

  Widget _body() {
    return Column(
      children: [
        Text(
          "Entregar en",
          style: TextStyle(color: colorTitles),
        ),
        Text(
          "Carrera 26 # 2 Sur - 46",
          style: TextStyle(color: colorPrimario,fontSize: 19),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "¿Confirmas que llegaste a entregar?",
          style: TextStyle(color: Color(0xffED6C1D)),
        ),
      ],
    );
  }

  Widget _footer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BotonSuave(
          titulo: "No",
          icono: FaIcon(
            FontAwesomeIcons.times,
            size: 18,
            color: colorPrimario,
          ),
          onPress: () {
            Get.back();
          },
        ),
        BotonSuave(
          titulo: "Si",
          icono: FaIcon(
            FontAwesomeIcons.check,
            size: 18,
            color: colorPrimario,
          ),
          onPress: () {
            //  Get.toNamed("domicilio_llegue_entregar");
          },
        )
      ],
    );
  }
}
