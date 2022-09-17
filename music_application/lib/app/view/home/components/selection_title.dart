import 'package:flutter/material.dart';
import 'package:music_application/app/view/base_components/base_textview.dart';
import 'package:music_application/utils/colors_picker.dart';
import 'package:music_application/utils/dimen.dart';
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
                  fontSize: Dimens.fontMedium,
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
                fontSize: Dimens.fontVerySmall,
                letterSpacing: 0,
                fontFamily: FontsPicker.HelveticaNeue,
                color: ColorPicker.Sapphire),
          ),
        ],
      );
    }
  }
}
