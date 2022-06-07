part of 'app_pages.dart';

abstract class Routes {
  static const SPLASH = _Paths.SPLASH;
  static const ROOT = _Paths.ROOT;
  static const LOGIN = _Paths.LOGIN;
  static const HOME = _Paths.HOME;
  static const PROFILE = _Paths.HOME + _Paths.PROFILE;
  static const SEARCH = _Paths.HOME + _Paths.SEARCH;
  static const PLAY_LIST = _Paths.HOME + _Paths.PLAY_LIST;
  static const PLAY_DEATAIL = _Paths.HOME + _Paths.PLAY_DEATAIL;

  Routes._();
  static String LOGIN_THEN(String afterSuccessfulLogin) =>
      '$LOGIN?then=${Uri.encodeQueryComponent(afterSuccessfulLogin)}';
  static String PLAY_DETAILS(String playMediaId) => '$PLAY_DEATAIL/$playMediaId';
}

abstract class _Paths {
  static const ROOT = '/';
  static const SPLASH = '/splash';
  static const HOME = '/home';
  static const PRODUCTS = '/products';
  static const PROFILE = '/profile';
  static const SETTINGS = '/settings';
  static const PRODUCT_DETAILS = '/:productId';
  static const LOGIN = '/login';
  static const DASHBOARD = '/search';
  static const PLAY_LIST = '/playlist';
  static const PLAY_DEATAIL = '/playdetail';
  static const SEARCH = '/search';
}