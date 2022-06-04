

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/routers/app_pages.dart';
import 'drawer.dart';
import 'package:music_application/app/view/root/controllers/root_controller.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(Get.currentRoute),
        centerTitle: true,
      ),
      body: GetRouterOutlet(
        initialRoute: Routes.HOME,
        anchorRoute: '/',
        filterPages: (afterAnchor) {
          // print(afterAnchor);
          // print('dddddddddddddddddd');
          // print(afterAnchor.take(1));
          return afterAnchor.take(1);
        },
      ),
    );
  }
}
