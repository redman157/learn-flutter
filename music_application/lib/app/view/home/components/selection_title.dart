import 'package:flutter/material.dart';
import 'package:music_application/app/view/base_components/base_text.dart';
import 'package:music_application/utils/colors_picker.dart';
import 'package:music_application/utils/dimensions.dart';
import 'package:music_application/utils/fonts_picker.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String? subTitle;

  SectionTitle({Key? key, required this.title, this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 5), child: initUI());
  }

  Widget initUI() {
    if (subTitle == null) {
      return Center(
          child: Text(title,
              style: TextStyle(
                  fontSize: Dimensions.fontMedium,
                  fontFamily: FontsPicker.HelveticaNeue,
                  color: ColorPicker.DarkIndigo)));
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BaseTextView(title, RenderStyle.Title),
          Text(
            subTitle.toString(),
            style: TextStyle(
                fontSize: Dimensions.fontVerySmall,
                letterSpacing: 0,
                fontFamily: FontsPicker.HelveticaNeue,
                color: ColorPicker.Sapphire),
          ),
        ],
      );
    }
  }
}
