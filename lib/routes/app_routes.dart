import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const onboarding = '/';
  static const login = '/login';
}

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.onboarding, page: () => const OnBoardingScreen()),
    GetPage(name: AppRoutes.login, page: () => const LoginPage()),
  ];
}
