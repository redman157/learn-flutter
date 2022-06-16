import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/view/home/controllers/search_controller.dart';


class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'SearchView',
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
