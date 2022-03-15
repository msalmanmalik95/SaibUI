import 'package:saibui/screens/landing/landing_screen.dart';
import 'package:saibui/screens/login/login_screen.dart';

class AppPages {
  static final routes = {
    Routes.landingScreen: (context) => LandingScreen(),
    Routes.loginScreen: (context) => LoginScreen(),
  };
}

class Routes {
  static const String landingScreen = '/LandingScreen';
  static const String loginScreen = '/LoginScreen';
}
