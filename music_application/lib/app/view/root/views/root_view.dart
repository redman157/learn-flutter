import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/base/base_view.dart';
import 'package:music_application/app/routers/app_log.dart';
import 'package:music_application/app/routers/app_pages.dart';
import 'package:music_application/app/view/base_components/base_app_bar.dart';
import 'package:music_application/app/view/root/controllers/root_controller.dart';

class RootView extends BaseView<RootController> {
  final rootRouter = GetRouterOutlet(
    initialRoute: Routes.ROOT_HOME,
    anchorRoute: Routes.ROOT,
    key: Get.nestedKey(Routes.ROOT),
    filterPages: (afterAnchor) {
      dLog("afterAnchor: ${afterAnchor.take(1)}");
      return afterAnchor.take(1);
    },
  );
  @override
  Widget build(BuildContext context) {
    rootRouter.key;
    return GetRouterOutlet.builder(
      routerDelegate: Get.rootDelegate,
      builder: (context, delegate, nav) {
        final currentLocation =
            (nav?.location == null) ? Routes.ROOT_HOME : nav?.location;
        return BaseAppBar(
            title: currentLocation.toString(),
            children: rootRouter);
      },
    );
  }
}
