import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:music_application/app/view/base_components/music_loading.dart';
import 'package:music_application/app/view/home/components/music_list.dart';
import 'package:music_application/app/view/home/components/selection_title.dart';
import 'package:music_application/app/view/home/controllers/home_controller.dart';
import 'package:music_application/utils/colors_picker.dart';
import 'package:music_application/utils/fonts_picker.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        primary: true,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildMainTitle(),
              _listBanner(),
              const SectionTitle(
                  title: "Âm nhạc thịnh hành", seeAll: "xem tất cả")
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainTitle() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          "Trang chủ",
          style: TextStyle(
            fontFamily: FontsPicker.HelveticaNeue,
            fontSize: 22,
            letterSpacing: 0,
            color: ColorPicker.darkIndigo,
          ),
        ),
      ),
    );
  }

  Widget _listBanner() {
    return Container(
      child: Obx(() {
        if (controller.musics.isNotEmpty) {
          return MusicListView(listBanner: controller.musics);
        } else {
          return const MusicLoading();
        }
      }),
    );
  }

  Widget _rowMusicPopular() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(alignment: Alignment.topLeft, child: Text("Âm nhạc thịnh hành")),
        Align(alignment: Alignment.topRight, child: Text("Xem tất cả")),
      ],
    );
  }
}
