
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';


import '../../../../utils/images.dart';
import '../controllers/splash_services.dart';


class SplashView extends GetView<SplashService>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              child: Images.logo,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Âm Nhạc Là Nơi Kết Nối Tâm Hồn",
              style: TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize:12
              ),
            ),
          ),
        ],
      )
    );
  }
  
}