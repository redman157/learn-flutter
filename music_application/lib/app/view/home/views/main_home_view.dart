import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/base/base_view.dart';
import 'package:music_application/app/routers/app_pages.dart';
import 'package:music_application/app/routers/bottom_navigation.dart';
import 'package:music_application/app/view/home/views/home_view.dart';
import 'package:music_application/app/view/home/views/play_list_view.dart';
import 'package:music_application/app/view/home/views/search_view.dart';
import '../controllers/main_home_controller.dart';

class MainHomeView extends BaseView<MainHomeController> {
  int currentIndex = 0;
  final List<BottomNavigationElement> _items = [
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

  final List<BottomNavigationBarItem> _listPage = [
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
      items: _listPage,
    );
    return bottom;
  }

  void _selectTab(int index) {
    if (index == currentIndex) {
      _items[index]
          .navigationKey
          ?.currentState
          ?.popUntil((route) => route.isFirst);
    } else {
      currentIndex = index;
    }
    // update();
  }

  Future<bool> onWillPop() async {
    final isFirstRouteInCurrentTab =
        await _items[currentIndex].navigationKey?.currentState?.maybePop();

    if (isFirstRouteInCurrentTab != null) {
      if (currentIndex != 0) {
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
    log("current Route: ${Get.currentRoute}");
    return GetRouterOutlet.builder(
      routerDelegate: Get.delegate(),
      builder: (context, delegate, nav) {
        // final delegate = context.navigation;
        //This router outlet handles the appbar and the bottom navigation bar
        var del = delegate.navigatorKey.currentState;
        var navi = nav?.currentPage;
        final currentLocation = nav?.location;
        if (currentLocation == null) {
          currentIndex = 0;
        } else {
          if (currentLocation.startsWith(Routes.SEARCH) == true) {
            currentIndex = 2;
          } else if (currentLocation.startsWith(Routes.PLAY_LIST) == true) {
            currentIndex = 1;
          } else {
            currentIndex = 0;
          }
        }
        return Scaffold(
            backgroundColor: Colors.blue,
            body: GetRouterOutlet(
              initialRoute: Routes.HOME,
              anchorRoute: Routes.ROOT_HOME,
              delegate: delegate,
              key: Get.nestedKey(Routes.HOME),
            ),
            bottomNavigationBar: _bottomNavigationBar(delegate, currentIndex));
      },
    );
  }
}
