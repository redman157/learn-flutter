import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/routers/app_pages.dart';
import 'package:music_application/app/view/splash/controllers/splash_services.dart';
import 'package:music_application/app/view/splash/views/splash_view.dart';



void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Application',
      initialBinding: BindingsBuilder(
        () {
          Get.put(SplashService());
          // Get.put(AuthService());
        },
      ),
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      builder: (context, child) {
        return FutureBuilder<void>(
          key: const ValueKey('initFuture'),
          future: Get.find<SplashService>().init(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return child ?? const SizedBox.shrink();
            }
            return SplashView();
          },
        );
      },
    )
  );
}
