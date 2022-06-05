
import 'package:get/instance_manager.dart';

abstract class BaseBinding extends Bindings{
  void binding();
  @override
  void dependencies() {
    binding();
  }

}