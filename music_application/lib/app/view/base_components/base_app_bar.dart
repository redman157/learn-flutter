import 'package:flutter/material.dart';
import 'package:music_application/utils/colors_picker.dart';
import 'package:music_application/utils/dimensions.dart';
import 'package:music_application/utils/fonts_picker.dart';

class BaseAppBar extends Scaffold {
  final String title;
  final Widget children;
  final Widget? bottomNavigation;

  const BaseAppBar(
      {Key? key,
      required this.title,
      required this.children,
      this.bottomNavigation})
      : super(key: key);

  @override
  PreferredSizeWidget? get appBar => AppBar(
        title: Text(title),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontFamily: FontsPicker.HelveticaNeue,
            fontSize: Dimensions.dp_15,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold),
        backgroundColor: ColorPicker.DarkIndigo,
        elevation: Dimensions.dp_2,
      );

  @override
  Widget? get bottomNavigationBar => bottomNavigation;

  @override
  Widget? get body => children;
}
