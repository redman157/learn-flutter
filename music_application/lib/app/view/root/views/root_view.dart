import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/base/base_view.dart';
import 'package:music_application/app/routers/app_log.dart';
import 'package:music_application/app/routers/app_pages.dart';
import 'drawer.dart';
import 'dart:developer';
import 'package:music_application/app/view/root/controllers/root_controller.dart';

class RootView extends BaseView<RootController> {

  final sController = Get.find<RootController>();

  RootView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    sController.initCtrl().then((value) => {
      dLog("RootView: $value")
    });
    return Scaffold(

    );

    return GetRouterOutlet.builder(
      routerDelegate: Get.rootDelegate,
      builder: (context, delegate, nav) {
        final currentLocation = nav?.location;
        return Scaffold(
            appBar: AppBar(
              title: Text("$currentLocation"),
              centerTitle: true,
            ),
            body: GetRouterOutlet(
              initialRoute: Routes.LOGIN,
              anchorRoute: Routes.ROOT,
              delegate: Get.rootDelegate,
              filterPages: (afterAnchor) {
                dLog( afterAnchor.take(1));
                return afterAnchor.take(1);
              },
            ));
      },
    );
  }
}
