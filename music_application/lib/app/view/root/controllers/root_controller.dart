
import 'dart:developer';

import 'package:get/get.dart';
import 'package:music_application/app/base/base_controller.dart';
import 'package:music_application/app/routers/app_log.dart';
import 'package:music_application/app/routers/app_pages.dart';


class RootController extends BaseController{
  final isValidate = false;
  late String route;
  @override
  void onInit() {
    dLog("QQQ RootController: onInit");
    super.onInit();
  }

  @override
  void onReady() {
    dLog("QQQ RootController: onInit");
    super.onReady();
  }

  Future<String?> initCtrl() async {
    await Future.delayed(const Duration(seconds: 2), (){
      bool isValidate = Get.find<RootController>().isValidate;
      route = isValidate ? Routes.LOGIN : Routes.HOME;
      return route;
    });
    return null;
  }

  @override
  void onClose() {
    dLog("QQQ RootController: onInit");
  }
}