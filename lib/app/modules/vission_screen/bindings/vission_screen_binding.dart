import 'package:get/get.dart';

import '../controllers/vission_screen_controller.dart';

class VissionScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VissionScreenController>(
      () => VissionScreenController(),
    );
  }
}
