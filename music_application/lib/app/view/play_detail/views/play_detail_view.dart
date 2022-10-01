import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:music_application/app/base/base_view.dart';
import 'package:music_application/app/routers/app_log.dart';
import 'package:music_application/app/view/base_components/base_app_bar.dart';
import 'package:music_application/app/view/play_detail/controller/play_detail_controller.dart';

class PlayDetailView extends BaseView<PlayDetailController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, nav) {
        // final delegate = context.navigation;
        //This router outlet handles the appbar and the bottom navigation bar
        var del = delegate.navigatorKey.currentState;

        var navi = nav?.currentPage;
        final currentLocation = nav?.location;
        dLog("PlayDetailView : ${currentLocation} --- del: ${del}");
        return BaseAppBar(
            title: Get.currentRoute,
            children: const Center(
              child: Text("PlayDetailView"),
            ));
      },
    );
  }
}
