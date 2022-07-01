import 'package:flutter/material.dart';
import 'package:music_application/utils/colors_picker.dart';
import 'package:music_application/utils/dimen.dart';
import 'package:music_application/utils/fonts_picker.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String seeAll;

  const SectionTitle({Key? key, required this.title, required this.seeAll})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(
                    fontSize: Dimens.fontMedium,
                    fontFamily: FontsPicker.HelveticaNeue,
                    color: ColorPicker.darkIndigo)),
            Text(
              seeAll,
              style: TextStyle(
                  fontSize: Dimens.fontSmall,
                  letterSpacing: 0,
                  fontFamily: FontsPicker.HelveticaNeue,
                  color: ColorPicker.sapphire),
            ),
          ],
        ));
  }
}
