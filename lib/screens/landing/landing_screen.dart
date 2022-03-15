import 'package:flutter/material.dart';
import 'package:saibui/routes/app_routes.dart';
import 'package:saibui/utils/ImageDir.dart';
import 'package:saibui/utils/constant/context_extension.dart';
import 'package:saibui/utils/styles/colors.dart';
import 'package:saibui/widgets/app_background.dart';
import 'package:saibui/widgets/elevated_button.dart';
import 'package:saibui/widgets/line_plane_draw.dart';
import 'package:saibui/widgets/text_icon_button.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinePlaneDraw(),
            SizedBox(height: context.dynamicHeight(.04)),
            Image.asset(
              ImageDir.LOGO_SAIB,
              width: context.dynamicWidth(.65),
            ),
            SizedBox(height: context.dynamicHeight(.04)),
            Text(
              'Welcome',
              style: TextStyle(color: kWhite),
            ),
            SizedBox(height: context.dynamicHeight(.04)),
            iconsRowWidget(),
            SizedBox(height: context.dynamicHeight(.08)),
            ElevatedBtn(
              labelText: 'Login',
              callback: () => onLoginBtnClick(),
            ),
            SizedBox(height: context.dynamicHeight(.02)),
            ElevatedBtn(
              labelText: 'Register',
              callback: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget iconsRowWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextIconButton(
          labelText: 'About Us',
          path: ImageDir.IC_ABOUTUS,
          onPressed: () => {},
        ),
        TextIconButton(
          labelText: 'ATM Locator',
          path: ImageDir.IC_LOCATOR,
          onPressed: () => {},
        ),
        TextIconButton(
          labelText: 'Contact Us',
          path: ImageDir.IC_PHONE,
          onPressed: () => {},
        ),
      ],
    );
  }

  /// Click Listener
  onLoginBtnClick() {
    Navigator.pushNamed(context, Routes.loginScreen);
  }
}
