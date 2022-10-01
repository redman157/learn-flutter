part of 'app_pages.dart';

abstract class Routes {
  static const SPLASH = _Paths.SPLASH;
  static const ROOT = _Paths.ROOT;
  static const LOGIN = _Paths.LOGIN;
  static const ROOT_HOME = _Paths.ROOT_HOME;
  static const HOME = _Paths.ROOT_HOME + _Paths.HOME;
  static const SEARCH = _Paths.ROOT_HOME + _Paths.SEARCH;
  static const PLAY_LIST = _Paths.ROOT_HOME + _Paths.PLAY_LIST;
  static const PLAY_DEATAIL = _Paths.ROOT + _Paths.PLAY_DEATAIL;

  Routes._();
  static String LOGIN_THEN(String afterSuccessfulLogin) =>
      '$LOGIN?then=${Uri.encodeQueryComponent(afterSuccessfulLogin)}';
  static String PLAY_DETAILS(String playMediaId) => '$PLAY_DEATAIL/$playMediaId';
}

abstract class _Paths {
  static const ROOT = '/';
  static const SPLASH = '/splash';
  static const HOME = '/home';
  static const ROOT_HOME = '${ROOT}root_home';
  static const PRODUCTS = '/products';
  static const PROFILE = '/profile';
  static const SETTINGS = '/settings';
  static const PRODUCT_DETAILS = '/:productId';
  static const LOGIN = '/login';
  static const DASHBOARD = '/search';
  static const PLAY_LIST = '/playlist';
  static const PLAY_DEATAIL = 'playDetail';
  static const SEARCH = '/search';
}