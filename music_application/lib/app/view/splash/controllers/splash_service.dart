import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

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
/*
    final timer =  Timer.periodic(
      const Duration(seconds: 4),
          (t) => {
        _changeActiveString()
      },
    );
*/

    final timer =  Timer.periodic(
      const Duration(seconds: 4),
          (t) => {
        _changeActiveString()
      },
    );
    var request = requestPermission();
    if(await Permission.storage.isGranted){


    }
    if(_isLoading){
      timer.cancel();
    }


  }

  Future<Map<Permission, PermissionStatus>> requestPermission() async{
    Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
        Permission.storage,
    ].request();
    return statuses;
  }
}
