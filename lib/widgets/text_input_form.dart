import 'package:flutter/material.dart';
import 'package:saibui/utils/styles/colors.dart';

class TextInputField extends StatefulWidget {
  String hintText;
  bool isPassword;
  TextEditingController? controller;
  TextInputField({
    Key? key,
    this.hintText = '',
    this.isPassword = false,
    this.controller,
  }) : super(key: key);

  @override
  _TextInputFieldState createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kGrey),
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(color: kGrey),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                    _passwordVisible
                        ? Icons.visibility_off
                        : Icons.remove_red_eye,
                    color: kGrey),
                onPressed: () {
                  setState(() => _passwordVisible = !_passwordVisible);
                })
            : null,
      ),
      style: TextStyle(color: kWhite),
      obscureText: widget.isPassword ? !_passwordVisible : false,
    );
  }
}
