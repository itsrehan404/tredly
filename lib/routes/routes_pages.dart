import 'package:get/get.dart';
import 'package:tredly/routes/routes_names.dart';
import 'package:tredly/views/Home%20Screen/Navigation%20Bar/custom_navbar.dart';
import 'package:tredly/views/Home%20Screen/home_screen.dart';

import '../views/Intro Screen/login_screen.dart';
import '../views/Intro Screen/onboarding.dart';
import '../views/Intro Screen/signup_screen.dart';
import '../views/Intro Screen/splash_screen.dart';




class RoutePages {
  static List<GetPage<dynamic>>? routes = [
    GetPage(name: RouteNames.splashScreen, page: () =>const SplashScreen()),
    GetPage(name: RouteNames.onboarding, page: () => const Onboarding()),
    GetPage(name: RouteNames.loginScreen, page: () => const LoginScreen()),
    GetPage(name: RouteNames.singUpScreen, page: () => const SingUpScreen()),
    GetPage(name: RouteNames.homeScreen, page: () =>const HomeScreen()),
    GetPage(name: RouteNames.customNavBar, page: () =>const CustomNavbar()),

  ];
}