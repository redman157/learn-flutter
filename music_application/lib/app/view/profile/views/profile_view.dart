import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_application/app/routers/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "ProfileView",
              style: TextStyle(fontSize: 20),
            ),
            MaterialButton(
              child: Text('Show a test dialog in Home router outlet'),
              onPressed: () {
                //shows a dialog
                Get.offAllNamed(Routes.HOME);
              },
            )
          ],
        ),
      ),
    );
  }
}
