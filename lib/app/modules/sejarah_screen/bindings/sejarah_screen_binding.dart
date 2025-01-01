import 'package:get/get.dart';

import '../controllers/sejarah_screen_controller.dart';

class SejarahScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SejarahScreenController>(
      () => SejarahScreenController(),
    );
  }
}
