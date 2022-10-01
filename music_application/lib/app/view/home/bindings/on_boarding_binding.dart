import 'package:get/get.dart';
import 'package:music_application/app/base/base_binding.dart';
import 'package:music_application/app/view/home/controllers/home_controller.dart';
import 'package:music_application/app/view/home/controllers/play_list_controller.dart';
import 'package:music_application/app/view/home/controllers/search_controller.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingBinding extends BaseBinding {
  @override
  void binding() {
    Get.lazyPut<OnBoardingController>(() => OnBoardingController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<PlayListController>(() => PlayListController());
    Get.lazyPut<SearchController>(() => SearchController());
  }
}
