import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/base/base_controller.dart';
import 'package:music_application/app/routers/app_pages.dart';
import 'package:music_application/app/routers/bottom_navigation.dart';
import 'package:music_application/app/view/home/views/home_view.dart';
import 'package:music_application/app/view/home/views/play_list_view.dart';
import 'package:music_application/app/view/home/views/search_view.dart';

class OnBoardingController extends BaseController {

  int currentIndex = 0;
  final List<BottomNavigationBarItem> listPage = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.featured_play_list),
      label: 'PlayList',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: "Search",
    ),
  ];
  final List<BottomNavigationElement> items = [
    BottomNavigationElement(
      bottomBarItem: const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
      ),
      bottomBarView: HomeView(),
      navigationKey: Get.nestedKey(Routes.HOME),
    ),
    BottomNavigationElement(
      bottomBarItem: const BottomNavigationBarItem(
        icon: Icon(Icons.featured_play_list),
        label: "PlayList",
      ),
      bottomBarView: PlayListView(),
      navigationKey: Get.nestedKey(Routes.PLAY_LIST),
    ),
    BottomNavigationElement(
      bottomBarItem: const BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: "Search",
      ),
      bottomBarView: SearchView(),
      navigationKey: Get.nestedKey(Routes.SEARCH),
    ),
  ];
  void navigationHome(){

  }
  void navigationPlayList(){

  }
  void navigationSearch(){

  }
}
