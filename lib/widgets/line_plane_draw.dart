import 'package:flutter/material.dart';
import 'package:saibui/utils/ImageDir.dart';
import 'package:saibui/utils/constant/context_extension.dart';

class LinePlaneDraw extends StatelessWidget {
  const LinePlaneDraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          ImageDir.LINE,
          fit: BoxFit.contain,
          width: double.infinity,
        ),
        Positioned(
          top: context.dynamicHeight(0.0),
          left: context.dynamicWidth(0.30),
          child: Image.asset(
            ImageDir.IC_PLANE,
            width: 70.0,
            height: 70.0,
          ),
        )
      ],
    );
  }
}
