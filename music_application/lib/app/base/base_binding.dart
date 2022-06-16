
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/instance_manager.dart';
import 'package:music_application/app/base/base_controller.dart';
import 'package:music_application/app/base/base_view.dart';
import 'package:music_application/app/routers/app_pages.dart';

abstract class BaseBinding extends Bindings{
  void binding();
  @override
  void dependencies() {
    binding();
  }

}

abstract class BaseBindingCreatorWidget<Binding extends Bindings,
T extends BaseController> extends BaseView<T> {
  final BindingCreator<Binding>? bindingCreator;

  const BaseBindingCreatorWidget({required this.bindingCreator});

  Widget? onCreateViews(BuildContext context);

  @override
  @nonVirtual
  Widget build(BuildContext context) {
    _createBinding();
    return GestureDetector(
        onTap: () {
          // call this method here to hide soft keyboard
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: onCreateViews(context) ?? const SizedBox.shrink());
  }

  void _createBinding() {
    Binding? binding = bindingCreator?.call();
    binding?.dependencies();
  }
}