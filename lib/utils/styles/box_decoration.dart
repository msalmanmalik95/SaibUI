import 'package:flutter/cupertino.dart';

import '../ImageDir.dart';
import 'colors.dart';

BoxDecoration customDecoration = BoxDecoration(
  image: DecorationImage(
    image: AssetImage(ImageDir.MAPS_DOTS),
    fit: BoxFit.contain,
  ),
);

TextStyle normalTextStyle = TextStyle(
  color: kWhite,
  fontSize: 16.0,
  fontWeight: FontWeight.w300,
);

TextStyle underlineTextStyle = TextStyle(
  color: kWhite,
  fontSize: 16.0,
  decoration: TextDecoration.underline,
  fontWeight: FontWeight.w300,
);
