import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/routers/app_pages.dart';
import 'package:music_application/app/view/root/views/root_view.dart';
import 'package:music_application/app/view/splash/controllers/splash_service.dart';
import 'package:music_application/app/view/splash/views/splash_view.dart';
import 'package:music_application/services/auth_service.dart';
void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Music Application',
    themeMode: ThemeMode.system,
    defaultTransition: Transition.leftToRightWithFade,
    getPages: AppPages.routes,
    initialRoute: AppPages.INITIAL,
    initialBinding: BindingsBuilder(
          () {
        Get.put(SplashService());
        Get.put(AuthService());
      },
    ),
    builder: (context, child) {
      return FutureBuilder<void>(
        key: const ValueKey('initFuture'),
        future: Get.find<SplashService>().init(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return child ?? const SizedBox.shrink();
          }
          return const SplashView();
        },
      );
    },
  ));
}
