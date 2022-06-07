import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:music_application/app/middleware/auth_middleware.dart';
import 'package:music_application/app/view/home/bindings/home_binding.dart';
import 'package:music_application/app/view/home/controllers/home_controller.dart';
import 'package:music_application/app/view/home/views/home_view.dart';
import 'package:music_application/app/view/login/bindings/login_binding.dart';
import 'package:music_application/app/view/login/views/login_view.dart';
import 'package:music_application/app/view/profile/bindings/profile_binding.dart';
import 'package:music_application/app/view/profile/views/profile_view.dart';
import 'package:music_application/app/view/root/views/root_view.dart';
import 'package:music_application/app/view/search/bindings/search_binding.dart';
import 'package:music_application/app/view/search/views/search_view.dart';
import 'package:music_application/app/view/splash/bindings/splash_binding.dart';
import 'package:music_application/app/view/splash/views/splash_view.dart';

import '../view/root/bindings/root _binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;
  static final routes = [
    GetPage(
      name: Routes.ROOT,
      page: () => RootView(),
      bindings: [RootBinding()],
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          middlewares: [
            EnsureAuthMiddleware(),
          ],
          name: Routes.LOGIN,
          page: () => LoginView(),
          bindings: [LoginBinding()],
        ),
        GetPage(
          name: Routes.SPLASH,
          page: () => SplashView(),
          bindings: [SplashBinding()],
        ),
        GetPage(
            preventDuplicates: true,
            name: Routes.HOME,
            page: () => HomeView(),
            bindings: [HomeBinding()],
            title: null,
            children: [
              GetPage(
                name: _Paths.PLAY_LIST,
                page: () => ProfileView(),
                bindings: [ProfileBinding()],
              ),
              GetPage(
                name: _Paths.SEARCH,
                page: () => SearchView(),
                bindings: [SearchBinding()],
              ),
            ]),
      ],
    ),
  ];
}
