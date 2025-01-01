// splash_screen_binding.dart
import 'package:get/get.dart';
import 'package:museumlpg/app/modules/splash_screen/controllers/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
        SplashScreenController()); // Pastikan controller diinisialisasi dengan benar
  }
}
