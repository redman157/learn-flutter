import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:music_application/app/middleware/auth_middleware.dart';
import 'package:music_application/app/view/home/bindings/home_binding.dart';
import 'package:music_application/app/view/home/controllers/home_controller.dart';
import 'package:music_application/app/view/home/views/home_view.dart';
import 'package:music_application/app/view/root/views/root_view.dart';
import 'package:music_application/app/view/splash/bindings/splash_binding.dart';
import 'package:music_application/app/view/splash/views/splash_view.dart';

import '../view/root/bindings/root _binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT;
  static final routes = [
    GetPage(
      name: Routes.ROOT,
      page: () => const RootView(),
      bindings: [RootBinding()],
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          middlewares: [
            //only enter this route when not authed
            EnsureAuthMiddleware(),
          ],
          name: _Paths.LOGIN,
          page: () => LoginView(),
          bindings: [LoginBinding()],
        ),
        GetPage(
          name: Routes.HOME,
          page: () => const HomeView(),
          bindings: [HomeBinding()],
        ),
      ],  
    )
  ];
}
