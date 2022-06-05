import 'package:flutter/src/foundation/key.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:music_application/app/base/base_controller.dart';

abstract class BaseView<C extends BaseController> extends GetView<C> {
  const BaseView({Key? key}) : super(key: key);
}