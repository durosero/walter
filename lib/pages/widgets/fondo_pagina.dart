import 'package:flutter/material.dart';
import 'package:walter/config/config.dart';
class FondoPagina extends StatelessWidget {
  const FondoPagina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient:
                        LinearGradient(colors: [colorPrimario, colorTitles])),
              ),

              Positioned(
                child: _Circulo(),
                left: MediaQuery.of(context).size.width/2,
                )
      ],
    );
  }
}

class _Circulo extends StatelessWidget {
  const _Circulo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: 450,
  
      decoration: BoxDecoration(
            color: colorTitles,
        borderRadius: BorderRadius.circular(450),
        border: Border.all(color: Colors.blueAccent.withOpacity(0.5))

      ),
    );
  }
}