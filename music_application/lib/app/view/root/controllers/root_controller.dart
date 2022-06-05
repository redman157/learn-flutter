
import 'dart:developer';

import 'package:get/get.dart';
import 'package:music_application/app/base/base_controller.dart';
import 'package:music_application/app/routers/app_log.dart';


class RootController extends BaseController{
  final count = 0.obs;
  @override
  void onInit() {
    log("QQQ RootController: onInit");
    super.onInit();
  }

  @override
  void onReady() {
    log("QQQ RootController: onInit");
    super.onReady();
  }

  @override
  void onClose() {
    log("QQQ RootController: onInit");
  }
  void increment() => count.value++;
  void decrement() => count.value--;
}