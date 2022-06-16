import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashService extends GetxService {
  final welcomeStr = ['Âm Nhạc Là Nơi Kết Nối Tâm Hồn','Âm Nhạc Là Món Ăn Tinh Thần!','Âm Nhạc Là Liều Thuốc Trái Tim'];
  final activeStr = 0.obs;
  bool _isLoading = true;

  @override
  void onInit() {
    super.onInit();
  }

  final memo = AsyncMemoizer<void>();
  Future<void> init() {
    return memo.runOnce(_initFunction);
  }

  void _changeActiveString() {
    activeStr.value = (activeStr.value + 1) % welcomeStr.length;
  }

  Future<void> _initFunction() async {
    _isLoading = true;
    var songs;
 /*   String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await SimplePermissions.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    platformVersion;*/
    final t = Timer.periodic(
      const Duration(seconds: 4),
          (t) => {
        _changeActiveString()
      },
    );
    t.cancel();
    //simulate some long running operation
    await Future.delayed(Duration(seconds: 5));
    //cancel the timer once we are done

  }
}
