import 'package:flutter/material.dart';
import 'package:saibui/utils/ImageDir.dart';
import 'package:saibui/utils/styles/colors.dart';

class AppBackground extends StatelessWidget {
  Widget child;

  AppBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: kBlack),
        Image.asset(
          ImageDir.BG_LANDING,
          fit: BoxFit.fitWidth,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(
            ImageDir.MAPS_DOTS,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 0,
          right: 0,
          child: child,
        )
      ],
    );
  }
}
