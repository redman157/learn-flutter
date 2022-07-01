import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_application/app/base/base_view.dart';
import 'package:music_application/app/routers/app_log.dart';
import 'package:music_application/app/view/login/controller/login_controller.dart';
import 'package:music_application/utils/fonts_picker.dart';
import 'package:music_application/utils/images.dart';

class LoginView extends BaseView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 40, top: 70, bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 50,
                height: 60,
                child: Images.logo,
              ),
            ),
            Expanded(
                flex: 4,
                child: Stack(alignment: Alignment.centerLeft, children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(Images.backGroundLogin),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: const EdgeInsets.only(top: 35),
                        child: Text(
                          "Âm nhạc dựa \ntrên tâm hồn \ncủa bạn",
                          style: TextStyle(
                              fontFamily: FontsPicker.HelveticaNeue,
                              fontSize: 37,
                              color: const Color.fromRGBO(28, 10, 65, 1)),
                        ),
                      ))
                ])),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      dLog('Click Facebook');
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      color: const Color.fromRGBO(45, 70, 185, 1),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(
                          left: 30, top: 15, bottom: 15, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Images.ic_facebook,
                          GestureDetector(
                            onTap: () {
                              dLog('Click Facebook');
                            },
                            child: Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: Text('Tiếp tục với Facebook',
                                  style: TextStyle(
                                      fontFamily: FontsPicker.HelveticaNeue,
                                      fontSize: 14,
                                      color: Colors.white)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      dLog('Click Google');
                    },
                    child: Container(
                      color: const Color.fromRGBO(239, 242, 252, 1),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(
                          left: 30, top: 15, bottom: 15, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Images.ic_google,
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: Text('Tiếp tục với Google',
                                style: TextStyle(
                                    fontFamily: FontsPicker.HelveticaNeue,
                                    fontSize: 14,
                                    color:
                                        const Color.fromRGBO(28, 10, 65, 1))),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(top: 30),
                    child: Text.rich(
                      TextSpan(
                        text: 'Bằng cách tiếp tục, bạn đồng ý với ',
                        style: TextStyle(
                            fontFamily: FontsPicker.HelveticaNeue,
                            fontSize: 12,
                            color: const Color.fromRGBO(28, 10, 65, 1)),
                        children: const [
                          TextSpan(
                              text: 'Điều khoản Dịch vụ',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              )),
                          TextSpan(
                              text: '\nvà ',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                              )),
                          TextSpan(
                              text: 'Chính sách bảo mật',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              )),
                          TextSpan(
                              text: ' của chúng tôi ',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
