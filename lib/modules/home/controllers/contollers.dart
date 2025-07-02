// lib/controllers/onboarding_controller.dart
import 'package:ecommerce/routes/app_routes.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  void finishOnboarding() {
    // replace the whole stack so user can’t go back with the back button
    Get.offAllNamed(AppRoutes.login);
  }
}
