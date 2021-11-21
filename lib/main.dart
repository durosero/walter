import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walter/pages/domicilio_confirmar2.dart';
import 'package:walter/pages/domicilio_confirmar_page.dart';
import 'package:walter/pages/domicilio_llegue_entregar_page.dart';
import 'package:walter/pages/domicilio_llegue_recoger_page.dart';
import 'package:walter/pages/domicio_salir_entregar_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Material App',
      initialRoute: '/domicilio_entregar',
      locale: Locale('es', 'CO'),
      theme: ThemeData.dark(),
      // darkTheme: ThemeChanger.dark,
      // themeMode: GlobalController().theme,
      //  home: LoginPage()
      getPages: [
        GetPage(name: '/domicilio_entregar', page: () => DomicilioLLegueRecogerPage()),
        GetPage(name: '/domicilio_salir_entregar', page: () => DomicilioSalirEntregarPage()),
        GetPage(name: '/domicilio_confirmar', page: () => DomicilioConfirmarPage()),
        GetPage(name: '/domicilio_llegue_entregar', page: () => DomicilioLlegueEntregarPage()),
        GetPage(name: '/domicilio_confirmar2', page: () => DomicilioConfirmar2Page()),


      ],
    );
  }
}