import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:music_application/app/middleware/auth_middleware.dart';
import 'package:music_application/app/view/home/bindings/home_binding.dart';
import 'package:music_application/app/view/home/bindings/on_boarding_binding.dart';
import 'package:music_application/app/view/home/controllers/on_boarding_controller.dart';
import 'package:music_application/app/view/home/views/home_view.dart';
import 'package:music_application/app/view/home/views/on_boarding_view.dart';
import 'package:music_application/app/view/login/bindings/login_binding.dart';
import 'package:music_application/app/view/login/views/login_view.dart';
import 'package:music_application/app/view/home/bindings/play_list_binding.dart';
import 'package:music_application/app/view/home/views/play_list_view.dart';
import 'package:music_application/app/view/play_detail/bindings/play_detail_binding.dart';
import 'package:music_application/app/view/play_detail/views/play_detail_view.dart';
import 'package:music_application/app/view/root/views/root_view.dart';
import 'package:music_application/app/view/home/bindings/search_binding.dart';
import 'package:music_application/app/view/home/views/search_view.dart';
import 'package:music_application/app/view/splash/bindings/splash_binding.dart';
import 'package:music_application/app/view/splash/views/splash_view.dart';

import '../view/root/bindings/root _binding.dart';

part 'app_routes.dart';

typedef BindingCreator<S extends Bindings> = S Function();

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOT;
  static final routes = [
    GetPage(
      name: Routes.ROOT,
      page: () => RootView(),
      bindings: [RootBinding()],
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
            name: Routes.ROOT_HOME,
            page: () => OnboardingView(),
            bindings: [OnBoardingBinding()],
            children: [
              GetPage(
                name: _Paths.HOME,
                page: () => HomeView(),
                bindings: [HomeBinding()],

              ),
              GetPage(
                name: _Paths.PLAY_LIST,
                page: () => PlayListView(),
                bindings: [PlayListBinding()],
              ),
              GetPage(
                name: _Paths.SEARCH,
                page: () => SearchView(),
                bindings: [SearchBinding()],
              ),
            ]),
        GetPage(
          name: Routes.PLAY_DEATAIL,
          page: () => PlayDetailView(),
          bindings: [PlayDetailBinding()],
        ),
      ],
    ),
  ];
}
