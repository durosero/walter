import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:walter/config/config.dart';

class Header extends StatelessWidget {
  Widget child =  Container();
  Header({Key? key, required this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: colorHeader),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 4,
            sigmaY: 4,
          ),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}


