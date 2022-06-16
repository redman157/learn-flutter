
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionService extends GetxService{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  initPlatformState() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
      Permission.storage,
    ].request();

  }

}