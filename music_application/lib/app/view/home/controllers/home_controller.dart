
import 'dart:async';

import 'package:get/get.dart';
import 'package:music_application/app/base/base_controller.dart';

class HomeController extends BaseController{
  final now = DateTime.now().obs;
  @override
  void onReady() {
    super.onReady();
    Timer.periodic(
      Duration(seconds: 1),
          (timer) {
        now.value = DateTime.now();
      },
    );
  }
}