import 'package:get/get.dart';
import 'package:music_application/app/base/base_binding.dart';
import 'package:music_application/app/view/root/controllers/root_controller.dart';
import 'package:music_application/app/view/splash/controllers/splash_controller.dart';

class RootBinding extends BaseBinding {
  @override
  void binding() {
    Get.lazyPut<RootController>(() => RootController());
  }
}
