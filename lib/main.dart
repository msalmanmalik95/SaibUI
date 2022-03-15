import 'package:flutter/material.dart';
import 'package:saibui/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saib UI',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      initialRoute: Routes.landingScreen,
      routes: AppPages.routes,
    );
  }
}
