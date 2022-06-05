

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/base/base_view.dart';
import 'package:music_application/app/routers/app_pages.dart';
import 'drawer.dart';
import 'dart:developer';
import 'package:music_application/app/view/root/controllers/root_controller.dart';

class RootView extends BaseView<RootController> {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      routerDelegate: Get.rootDelegate,
      builder: (context, delegate, nav){
        //This router outlet handles the appbar and the bottom navigation bar
        final currentLocation = nav?.location;
        var currentIndex = 0;
        /*if (currentLocation?.startsWith(Routes.PRODUCTS) == true) {
          currentIndex = 2;
        }
        if (currentLocation?.startsWith(Routes.PROFILE) == true) {
          currentIndex = 1;
        }*/
        log("QQQ currentLocation");
        return Scaffold(
            appBar: AppBar(
              title: Text("$currentLocation"),
              centerTitle: true,
            ),
            body: GetRouterOutlet(
            initialRoute: Routes.HOME,
            anchorRoute: Routes.ROOT,
            delegate:  Get.rootDelegate,
            filterPages: (afterAnchor) {
              // print(afterAnchor);
              // print('dddddddddddddddddd');
              // print(afterAnchor.take(1));
              return afterAnchor.take(1);
            },
        )
        );
      },
    );
  }
}
