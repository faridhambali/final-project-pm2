import 'package:get/get.dart';
import 'package:museumlpg/app/routes/app_pages.dart'; // Import app_pages.dart untuk rute

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // Menunggu selama 3 detik, kemudian navigasi ke Home Screen
    Future.delayed(const Duration(seconds: 3), () {
      // Navigasi ke Home Screen setelah 3 detik
      Get.offAllNamed(Routes.HOME); // Gunakan Get.offAllNamed untuk menghilangkan Splash Screen
    });
  }
}
