import 'package:flutter/material.dart';
import 'package:saibui/utils/styles/colors.dart';

class TextIconButton extends StatelessWidget {
  String labelText;
  String path;
  Function onPressed;

  TextIconButton({
    Key? key,
    required this.labelText,
    required this.path,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          iconSize: 40.0,
          onPressed: () => onPressed,
          icon: Image.asset(path),
        ),
        Text(labelText,
            style: TextStyle(
              color: kWhite,
              letterSpacing: -0.5,
            ))
      ],
    );
  }
}
