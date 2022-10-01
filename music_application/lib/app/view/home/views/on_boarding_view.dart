import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/base/base_view.dart';
import 'package:music_application/app/routers/app_log.dart';
import 'package:music_application/app/routers/app_pages.dart';

import '../controllers/on_boarding_controller.dart';

class OnboardingView extends BaseView<OnBoardingController> {
  @override
  final OnBoardingController controller = Get.find();

  Widget _bottomNavigationBar(GetDelegate delegate, int currentIndex) {
    var bottom = BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (value) {
        // _selectTab(value);
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
      items: controller.listPage,
    );
    return bottom;
  }

  void _selectTab(int index) {
    if (index == controller.currentIndex) {
      controller.items[index].navigationKey?.currentState
          ?.popUntil((route) => route.isFirst);
    } else {
      controller.currentIndex = index;
    }
    // update();
  }

  Future<bool> onWillPop() async {
    final isFirstRouteInCurrentTab = await controller
        .items[controller.currentIndex].navigationKey?.currentState
        ?.maybePop();

    if (isFirstRouteInCurrentTab != null) {
      if (controller.currentIndex != 0) {
        // _selectTab(1);
        return false;
      }
    }
    return isFirstRouteInCurrentTab ?? false;
  }

  Widget navigationTab(
      {required GlobalKey<NavigatorState> naviKey, required Widget widget}) {
    return Navigator(
      key: naviKey,
      onGenerateRoute: (routeSettings) {
        return GetPageRoute(page: () => widget);
      },
    );
  }

  /* GetRouterOutlet _onBoardRoute(){
    return GetRouterOutlet.builder(
      routerDelegate: Get.rootDelegate,
      builder: (context, delegate, navigation){

      });
  }*/

  @override
  Widget build(BuildContext context) {
    dLog("OnboardingView: current Route: ${Get.currentRoute}");
    return GetRouterOutlet.builder(builder: (context, delegate, nav) {
      // final delegate = context.navigation;
      //This router outlet handles the appbar and the bottom navigation bar
      var del = delegate.navigatorKey.currentState;
      var navi = nav?.currentPage;

      dLog("Get.rootDelegate.navigatorKey: ${Get.rootDelegate.navigatorKey}");
      dLog(
          "Get.rootDelegate.currentConfiguration.toString(): ${Get.rootDelegate.currentConfiguration.toString()}");
      final currentLocation = nav?.location;
      if (currentLocation == null) {
        controller.currentIndex = 0;
      } else {
        if (currentLocation.startsWith(Routes.SEARCH) == true) {
          controller.currentIndex = 2;
        } else if (currentLocation.startsWith(Routes.PLAY_LIST) == true) {
          controller.currentIndex = 1;
        } else {
          controller.currentIndex = 0;
        }
      }
      return Scaffold(
        body: controller.items[controller.currentIndex].bottomBarView,
        bottomNavigationBar:
            _bottomNavigationBar(delegate, controller.currentIndex),
      );
    });
  }
}
