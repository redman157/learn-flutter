import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/parse_route.dart';
import 'package:music_application/app/routers/app_pages.dart';

import '../../services/auth_service.dart';

class EnsureAuthMiddleware extends GetMiddleware {

  @override
  RouteSettings? redirect(String? route){
    if (AuthService.to.isLoggedInValue) {
      const RouteSettings(name: Routes.LOGIN);
    } else {
      const RouteSettings(name: Routes.HOME);
    }
  }
}

