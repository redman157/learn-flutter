import 'package:flutter/material.dart';

class BottomNavigationElement extends BottomNavigationBarItem {
  late Widget bottomBarView;
  late BottomNavigationBarItem bottomBarItem;
  late GlobalKey<NavigatorState>? navigationKey;
  BottomNavigationElement({
    required this.bottomBarView,
    required this.bottomBarItem,
    required GlobalKey<NavigatorState>? navigationKey,
  }) : super(icon: bottomBarItem.icon, label: bottomBarItem.label);
}