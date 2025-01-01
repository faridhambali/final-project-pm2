import 'package:get/get.dart';
import 'package:museumlpg/app/modules/dashboard_screen/views/dashboard_screen_view.dart';
import 'package:museumlpg/app/modules/sejarah_screen/views/sejarah_screen_view.dart';
import 'package:museumlpg/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:museumlpg/app/modules/splash_screen/views/splash_screen_view.dart';
import 'package:museumlpg/app/modules/vission_screen/views/vission_screen_view.dart';
import '../modules/home_screen/views/home_screen_view.dart';
import '../modules/home_screen/bindings/home_screen_binding.dart'; // Import binding

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomeScreenView(),
      binding: HomeScreenBinding(), // Pastikan binding digunakan
    ),
    GetPage(
      name: Routes.DASHBOARD,
      page: () => DashboardScreenView(),
    ),
    GetPage(
      name: Routes.SEJARAH,
      page: () {
        // Ambil parameter dari URL
        final image = Get.parameters['image'] ?? '';
        final description = Get.parameters['description'] ?? '';
        return SejarahScreenView(
          image: image,
          description: description,
        );
      },
    ),
    GetPage(
      name: Routes.VISION,
      page: () => const VissionScreenView(),
    ),
  ];
}
