import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:walter/config/config.dart';
import 'package:walter/pages/widgets/badge_ubicacion.dart';
import 'package:walter/pages/widgets/boton_principal.dart';
import 'package:walter/pages/widgets/boton_suave.dart';
import 'package:walter/pages/widgets/caja_pagina.dart';
import 'package:walter/pages/widgets/confirmar_modal.dart';
import 'package:walter/pages/widgets/datos_ruta.dart';
import 'package:walter/pages/widgets/fondo_pagina.dart';
import 'package:walter/pages/widgets/header.dart';

class DomicilioLlegueEntregarPage extends StatelessWidget {
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
              CajaPagina(),
              SizedBox(height: 10),
              DatosRuta(),
              Column(
                children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            ListTile(
                              trailing: FaIcon(
                                FontAwesomeIcons.solidCheckCircle,
                                color: Color(0xff468C2E),
                              ),
                              leading: BadgeUbicacion(
                                backgroundcolor: colorPrimario,
                                titulo: "A",
                                backgroundcolorBadge: Color(0xffC1D2FF),
                                colorIcono: Color(0xff002EA8),
                              ),
                              title: Text("Recoger en",
                                  style: TextStyle(color: colorTitles)),
                              subtitle: Text(
                                "Calle 10 # 43 - 28",
                                style: TextStyle(color: colorPrimario),
                              ),
                            ),
                          ],
                        ),
                      )),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            BadgeUbicacion(
                              backgroundcolor: Color(0xffED6C1D),
                              titulo: "B",
                              colorIcono: Color(0xffED6C1D),
                              backgroundcolorBadge: Color(0xffFBDBC7),
                            ),
                            Text(
                              "Entregar en ",
                              style: TextStyle(color: Color(0xff0000FF)),
                            ),
                            Text(
                              "Carrera 26 # 2 Sur - 46",
                              style: TextStyle(
                                  color: colorPrimario, fontSize: 19),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsetsDirectional.all(15),
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color: Colors.blueAccent
                                              .withOpacity(0.5)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            FaIcon(
                                              FontAwesomeIcons.infoCircle,
                                              size: 10,
                                              color: colorPrimario,
                                            ),
                                            Text(
                                              " Especificaciones",
                                              style: TextStyle(
                                                  color: colorPrimario,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Edificio Montecristo \nApto 602",
                                          style: TextStyle(
                                              color: Color(0xff000000),
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),


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


                            SizedBox(
                              height: 20,
                            ),
                          

                            Row(
                              children: [
                                Expanded(
                                  child: BotonPrincipal(
                                      titulo: "Llegue a Entregar",
                                      onPress: (){
                                        // showDialog(context: context, builder: (BuildContext contex){

                                        //   return Dialog(
                                        //     child: ConfirmarModal(),
                                        //   );

                                        // });

                                        Get.toNamed("domicilio_confirmar2");
                                      },
                                      icono: FaIcon(
                                        FontAwesomeIcons.solidCheckCircle,
                                        size: 20,
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      )),
                ],
              )
            ],
          )
        ],
      )),
    );
  }
}
