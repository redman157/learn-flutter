import 'package:get/get.dart';
import 'package:music_application/app/base/base_binding.dart';
import 'package:music_application/app/view/login/controller/login_controller.dart';

class LoginBinding extends BaseBinding {
  @override
  void binding() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}