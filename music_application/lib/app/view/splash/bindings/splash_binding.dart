

import 'package:get/get.dart';
import 'package:music_application/app/base/base_binding.dart';
import 'package:music_application/app/view/splash/controllers/splash_service.dart';

class SplashBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<SplashService>(() => SplashService());
  }
}