import 'package:flutter/material.dart';

class ElevatedBtn extends StatelessWidget {
  final String labelText;
  final VoidCallback callback;

  const ElevatedBtn({Key? key, required this.labelText, required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      width: 280.0,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ))),
        onPressed: callback,
        child: Text(labelText),
      ),
    );
  }
}
