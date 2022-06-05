import 'package:get/get.dart';
import 'package:music_application/app/base/base_binding.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends BaseBinding {
  @override
  void binding() {
    Get.lazyPut<HomeController>(() => HomeController(),
    );
  }
}
