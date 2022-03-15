import 'package:flutter/material.dart';
import 'package:saibui/routes/app_routes.dart';
import 'package:saibui/utils/ImageDir.dart';
import 'package:saibui/utils/constant/context_extension.dart';
import 'package:saibui/utils/styles/box_decoration.dart';
import 'package:saibui/utils/styles/colors.dart';
import 'package:saibui/widgets/app_background.dart';
import 'package:saibui/widgets/elevated_button.dart';
import 'package:saibui/widgets/line_plane_draw.dart';
import 'package:saibui/widgets/text_input_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: context.dynamicHeight(0.05)),
                LinePlaneDraw(),
                SizedBox(
                  width: context.dynamicWidth(.65),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: context.dynamicHeight(.02)),
                      Image.asset(
                        ImageDir.LOGO_SAIB,
                        width: double.infinity,
                      ),
                      SizedBox(
                        height: context.dynamicHeight(.04),
                      ),
                      TextInputField(hintText: 'User Name'),
                      SizedBox(height: context.dynamicHeight(.02)),
                      TextInputField(
                        hintText: 'Password',
                        isPassword: true,
                      ),
                      SizedBox(height: context.dynamicHeight(.04)),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => setState(() {
                              rememberMe = !rememberMe;
                            }),
                            child: Icon(
                              rememberMe
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank,
                              color: rememberMe ? kPrimaryAccentColor : kWhite,
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'Remember Me',
                            style: normalTextStyle.copyWith(
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(height: context.dynamicHeight(.03)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ElevatedBtn(
                      labelText: 'Login',
                      callback: () => {onLoginBtnClick()},
                    ),
                    SizedBox(height: context.dynamicHeight(.02)),
                    Text(
                      'Forgot Password',
                      style: underlineTextStyle,
                    ),
                    SizedBox(height: context.dynamicHeight(.02)),
                    Text.rich(
                      TextSpan(
                          text: 'Dont have an account ',
                          style: normalTextStyle,
                          children: [
                            TextSpan(
                              text: 'Register',
                              style: underlineTextStyle,
                            )
                          ]),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: context.dynamicHeight(0.12)),
            iconsRowWidget(),
          ],
        ),
      ),
    );
  }

  Widget iconsRowWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: Image.asset(ImageDir.IC_ABOUTUS),
          iconSize: 40.0,
          onPressed: () => {},
        ),
        IconButton(
          icon: Image.asset(ImageDir.IC_LOCATOR),
          iconSize: 40.0,
          onPressed: () => {},
        ),
        IconButton(
          icon: Image.asset(ImageDir.IC_PHONE),
          iconSize: 40.0,
          onPressed: () => {},
        ),
      ],
    );
  }

  /// Click Listener
  onLoginBtnClick() {
    Navigator.pushNamed(context, Routes.landingScreen);
  }
}
