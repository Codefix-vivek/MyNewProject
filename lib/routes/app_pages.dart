import 'package:ecommerce/routes/app_routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../modules/home/screens/firstscreen.dart';
import '../modules/auth/login.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.onboarding, page: () => const OnBoardingScreen()),
    GetPage(name: AppRoutes.login, page: () => const LoginPage()),
  ];
}
