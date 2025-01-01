import 'package:get/get.dart';

import '../controllers/dashboard_screen_controller.dart';

class DasboardScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DasboardScreenController>(
      () => DasboardScreenController(),
    );
  }
}
