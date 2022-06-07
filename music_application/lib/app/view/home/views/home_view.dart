import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/base/base_view.dart';
import 'package:music_application/app/routers/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends BaseView<HomeController> {

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      // routerDelegate: Get.rootDelegate,
      builder: (context, delegate, nav) {
        // final delegate = context.navigation;
        //This router outlet handles the appbar and the bottom navigation bar
        final currentLocation = nav?.location;
        var currentIndex = 0;
        if (currentLocation?.startsWith(Routes.SEARCH) == true) {
          currentIndex = 2;
        }
        if (currentLocation?.startsWith(Routes.PLAY_LIST) == true) {
          currentIndex = 1;
        }
        log("HomeView: $currentLocation");
        return Scaffold(
          backgroundColor: Colors.blue,
          body: GetRouterOutlet(
            initialRoute: Routes.SEARCH,
            anchorRoute: Routes.HOME,
            //delegate: Get.nestedKey(Routes.HOME),
            // key: Get.nestedKey(Routes.HOME),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              switch (value) {
                case 0:
                  delegate.toNamed(Routes.HOME);
                  break;
                case 1:
                  delegate.toNamed(Routes.PLAY_LIST);
                  break;
                case 2:
                  delegate.toNamed(Routes.SEARCH);
                  break;
                default:
              }
            },
            items: [
              // _Paths.HOME + [Empty]
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              // _Paths.HOME + Routes.PROFILE
              BottomNavigationBarItem(
                icon: Icon(Icons.featured_play_list),
                label: 'PlayList',
              ),
              // _Paths.HOME + _Paths.PRODUCTS
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
            ],
          ),
        );
      },
    );
  }
}
