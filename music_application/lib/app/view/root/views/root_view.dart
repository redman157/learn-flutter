import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/base/base_view.dart';
import 'package:music_application/app/routers/app_log.dart';
import 'package:music_application/app/routers/app_pages.dart';
import 'package:music_application/app/view/root/controllers/root_controller.dart';

class RootView extends BaseView<RootController> {
  @override
  Widget build(BuildContext context) {
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
              initialRoute: Routes.ROOT_HOME,
              anchorRoute: Routes.ROOT,
              delegate: delegate,
              key: Get.nestedKey(Routes.ROOT_HOME),
              filterPages: (afterAnchor) {
                dLog("afterAnchor: ${afterAnchor.take(1)}");
                return afterAnchor.take(1);
              },
            ));
      },
    );
  }
}
