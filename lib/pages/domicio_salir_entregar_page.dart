import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:walter/config/config.dart';
import 'package:walter/pages/widgets/badge_ubicacion.dart';
import 'package:walter/pages/widgets/boton_principal.dart';
import 'package:walter/pages/widgets/boton_suave.dart';
import 'package:walter/pages/widgets/caja_pagina.dart';
import 'package:walter/pages/widgets/datos_ruta.dart';
import 'package:walter/pages/widgets/fondo_pagina.dart';
import 'package:walter/pages/widgets/header.dart';

class DomicilioSalirEntregarPage extends StatelessWidget {
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
              Column(
                children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [


                            ListTile(
                              leading: BadgeUbicacion(
                                  titulo: "A",
                                  backgroundcolor: colorPrimario,
                                  backgroundcolorBadge: Color(0xffC1D2FF),
                                  colorIcono: Color(0xff002EA8),
                                ),
                              title: Text(
                                      "Recoger en",
                                      style:
                                          TextStyle(color: colorTitles),
                                    ),
                                    subtitle: Text(
                                      "Calle 10 # 43 - 28",
                                      style:
                                          TextStyle(color: colorPrimario),
                                    ),
                            ),




                            
                          ],
                        ),
                      )),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.userCircle,
                              color: colorPrimario,
                              size: 35,
                            ),
                            Text(
                              "Super Burguer",
                              style: TextStyle(
                                  color: Color(0xff0000FF), fontSize: 19),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Clave",
                                  style: TextStyle(
                                      color: Color(0xff000000), fontSize: 14),
                                ),
                                Text(
                                  "7359",
                                  style: TextStyle(
                                      color: Color(0xff000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Domicilios",
                                              style: TextStyle(
                                                  color: Color(0xff000000),
                                                  fontSize: 14),
                                            ),
                                            Text(
                                              "2",
                                              style: TextStyle(
                                                  color: Color(0xff000000),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Valor Productos",
                                              style: TextStyle(
                                                  color: Color(0xff000000),
                                                  fontSize: 14),
                                            ),
                                            Text(
                                              "\$ 69.000",
                                              style: TextStyle(
                                                  color: Color(0xff000000),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
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
                            Text("Opcional",
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 20,
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: BotonSuave(
                                    titulo: "Foto Producto",
                                    onPress: (){},
                                    icono: FaIcon(
                                      FontAwesomeIcons.camera,
                                      size: 18,
                                      color: colorPrimario,
                                    ),
                                  )),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: BotonSuave(
                                    titulo: "Llamar al cliente",
                                    onPress: (){},
                                    icono: FaIcon(
                                      FontAwesomeIcons.phoneAlt,
                                      size: 18,
                                      color: colorPrimario,
                                    ),
                                  ))
                                ],
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: BotonPrincipal(
                                  titulo: "Salir a Entregar",
                                  
                                  onPress: (){
                                  Get.toNamed("domicilio_confirmar");
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
