// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:walter/config/config.dart';
import 'package:walter/pages/widgets/badge_ubicacion.dart';
import 'package:walter/pages/widgets/boton_principal.dart';
import 'package:walter/pages/widgets/boton_suave.dart';
import 'package:walter/pages/widgets/caja_pagina.dart';
import 'package:walter/pages/widgets/contenedor_detalle.dart';
import 'package:walter/pages/widgets/datos_ruta.dart';
import 'package:walter/pages/widgets/fondo_pagina.dart';
import 'package:walter/pages/widgets/header.dart';
import 'package:badges/badges.dart';

class DomicilioLLegueRecogerPage extends StatelessWidget {
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),

                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          BadgeUbicacion(
                            titulo: "A",
                              backgroundcolor: colorPrimario,
                              colorIcono: colorPrimario,
                          ),
                          Text(
                            "Recoger en",
                            style: TextStyle(
                                color: colorTitles,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Super Burger",
                            style: TextStyle(
                                color: colorPrimario, fontSize: 18),
                          ),
                          Text("Calle 10 # 43 - 28",
                              style: TextStyle(
                                color: colorPrimario,
                                fontSize: 18,
                              )),
                          SizedBox(height: 10),
                          ContenedorDetalle(),
                          SizedBox(height: 10),

                          Container(
                            width: 140,
                            child: BotonSuave(
                                titulo: "Ver Mapa",
                                onPress: (){},
                                icono: Icon(
                                  Icons.location_on,
                                  color: colorPrimario,
                                )),
                          ),

                          SizedBox(height: 10),
                          BotonPrincipal(
                              titulo: "Llegue a Recoger",
                              onPress: (){
                                Get.toNamed("domicilio_salir_entregar");
                              },
                              icono: FaIcon(
                                FontAwesomeIcons.solidCheckCircle,
                                size: 20,
                              )),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
