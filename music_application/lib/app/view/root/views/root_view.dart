import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/base/base_view.dart';
import 'package:music_application/app/routers/app_log.dart';
import 'package:music_application/app/routers/app_pages.dart';
import 'package:music_application/app/view/home/views/home_view.dart';
import 'drawer.dart';
import 'dart:developer';
import 'package:music_application/app/view/root/controllers/root_controller.dart';

class RootView extends BaseView<RootController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      routerDelegate: Get.rootDelegate,
      builder: (context, delegate, nav) {
        final currentLocation = nav?.location;
        log("RootView: $currentLocation");
        return Scaffold(
            appBar: AppBar(
              title: Text("$currentLocation"),
              centerTitle: true,
            ),
            body: GetRouterOutlet(
              initialRoute: Routes.HOME,
              anchorRoute: Routes.ROOT,

              key: Get.nestedKey(Routes.HOME),
              filterPages: (afterAnchor) {
                dLog("afterAnchor: ${afterAnchor.take(1)}");
                return afterAnchor.take(1);
              },
            ));
      },
    );
  }
}
