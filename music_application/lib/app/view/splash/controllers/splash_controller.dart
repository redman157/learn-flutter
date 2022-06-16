import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/base/base_controller.dart';
import 'package:music_application/app/routers/app_log.dart';
import 'package:music_application/app/routers/app_pages.dart';

class SplashController extends BaseController  {
  final welcomeStr = ['Music for life'];
  final activeStr = 0.obs;
  late final AnimationController _animationController;

  final _loading = Timer(const Duration(seconds: 5), () {
    Get.offAllNamed(Routes.HOME);
  });

  Future<void> _onLoading() async {
    _loading;
  }

  void _changeActiveString() {
    activeStr.value = (activeStr.value + 1) % welcomeStr.length;
  }

  @override
  void onInit() {
    log("QQQ SplashController: onInit");

    super.onInit();
  }

  @override
  void onReady() {
    log("QQQ SplashController: onInit");
    super.onReady();
    _onLoading();
  }

  @override
  void onClose() {
    log("QQQ SplashController: onInit");
  }
}
