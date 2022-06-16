
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:music_application/app/view/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Obx(
              () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'HomeView',
                style: TextStyle(fontSize: 20),
              ),
              Text('Time: ${controller.now.value.toString()}'),
            ],
          ),
        ),
      ),
    );
  }
  
}