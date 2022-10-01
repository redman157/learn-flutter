import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:music_application/app/routers/app_log.dart';
import 'package:music_application/app/routers/app_pages.dart';
import 'package:music_application/app/view/base_components/shimmer.dart';
import 'package:music_application/app/view/home/components/selection_list.dart';
import 'package:music_application/app/view/home/components/selection_title.dart';
import 'package:music_application/app/view/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        primary: true,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            width: double.infinity,
            color: Colors.amber,
            child: Column(
              children: [
                SectionTitle(title: "Âm nhạc thịnh hành"),
                SizedBox(height: 200, child: _musicBanner()),
                SectionTitle(
                    title: "Âm nhạc thịnh hành", subTitle: "xem tất cả"),
                SizedBox(height: 300, child: _musicList())
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _musicBanner() {
    return Obx(() {
      if (controller.musics.isNotEmpty) {
        return SectionList(
            listMusic: controller.musics,
            orientation: ListOrientation.Horizontal,
            onClickItem: (songInfo) {
              dLog("_musicBanner: ${songInfo.title}");
              Get.toNamed(Routes.PLAY_DETAILS("12"));
            });
      } else {
        return ShimmerLoading(orientation: ShimmerOrientation.Horizontal, numLine: 1);
      }
    });
  }

  Widget? _musicList() {
    var item;
    return Obx(() {
      if (controller.musics.isNotEmpty) {
        return SectionList(
          listMusic: controller.musics,
          orientation: ListOrientation.Vertical,
        );
      } else {
        return ShimmerLoading(orientation: ShimmerOrientation.Vertical, numLine: 1);
      }
    });
  }
}
