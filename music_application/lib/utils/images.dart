
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class Images{
  static Widget logo = SvgPicture.asset(
      'images/logo.svg',
  );
  static Widget ic_google = SvgPicture.asset(
    'images/ic_google.svg',
  );
  static Widget ic_facebook = SvgPicture.asset(
    'images/ic_fb.svg',
  );

  static String backGroundLogin = "images/img_background_login.png";

  static Widget progress = Lottie.asset('assets/progress.json');
}