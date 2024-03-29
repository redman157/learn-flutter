import 'package:get/get.dart';
import 'package:music_application/app/base/base_binding.dart';
import 'package:music_application/app/view/home/controllers/home_controller.dart';

class HomeBinding extends BaseBinding {
  @override
  void binding() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
