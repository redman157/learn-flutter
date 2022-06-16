import 'package:get/get.dart';
import 'package:music_application/app/base/base_binding.dart';

import '../controllers/main_home_controller.dart';

class MainHomeBinding extends BaseBinding {
  @override
  void binding() {
    Get.lazyPut<MainHomeController>(() => MainHomeController(),
    );
  }
}
