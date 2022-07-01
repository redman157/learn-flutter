import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:get/get.dart';
import 'package:music_application/app/base/base_controller.dart';
import 'package:music_application/services/media_service.dart';

class HomeController extends BaseController {
  RxBool isMusicLoading = false.obs;
  final MediaService _mediaService = Get.find();
  RxList<SongInfo> musics = List<SongInfo>.empty(growable: true).obs;

  @override
  void onInit() {
    getMusic();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void getMusic() async {
    try {
      isMusicLoading(true);
      {
        _mediaService.getMusics().then((value) => {
          musics.addAll(value)
         }
        );
      }
    } finally {
      isMusicLoading(false);
    }
  }
}
