
import 'package:get/get.dart';
import 'package:music_application/app/base/base_binding.dart';
import 'package:music_application/app/view/play_detail/controller/play_detail_controller.dart';

class PlayDetailBinding extends BaseBinding {
  @override
  void binding() {
    Get.lazyPut<PlayDetailController>(() => PlayDetailController());
  }
}