import 'package:get/get.dart';
import 'package:music_application/app/view/home/controllers/home_controller.dart';
import 'package:music_application/app/view/home/views/home_view.dart';
import 'package:music_application/app/view/root/views/root_view.dart';
import 'package:music_application/app/view/splash/views/splash_view.dart';

import '../view/root/bindings/root _binding.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.ROOT,
      page: () => RootView(),
      bindings: [RootBinding()],
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          name: Routes.HOME,
          page: () => HomeView(),

        )
      ],  
    )
  ];
}
