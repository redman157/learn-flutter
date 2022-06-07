import 'package:get/get.dart';

class AuthService extends GetxService {
  static AuthService get to => Get.find();

  @override
  void onInit() {
    isLogin();
    super.onInit();
  }
  /// Mocks a login process
  final isLoggedIn = false.obs;
  bool get isLoggedInValue => isLoggedIn.value;

  Future<void> isLogin() async{
    // call api check login
    if(true){
      login();
    }else{
      logout();
    }
  }

  void login() {
    isLoggedIn.value = true;
  }

  void logout() {
    isLoggedIn.value = false;
  }
}
