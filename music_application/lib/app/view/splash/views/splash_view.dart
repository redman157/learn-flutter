import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:music_application/app/view/splash/controllers/splash_service.dart';

import '../../../../utils/images.dart';

class SplashView extends GetView<SplashService> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _screenLoading();
  }

  Widget _screenLoading() {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    child: ImageUtils.logo,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: ImageUtils.progress,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Obx(
                () => Text(
                  controller.welcomeStr[controller.activeStr.value],
                  style: TextStyle(fontFamily: 'HelveticaNeue', fontSize: 12),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
