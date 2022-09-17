import 'package:flutter/material.dart';
import 'package:music_application/utils/colors_picker.dart';
import 'package:music_application/utils/dimen.dart';
import 'package:music_application/utils/fonts_picker.dart';

enum RenderStyle { Title, Description, Small, Medium, High }

class BaseTextView extends Text {
  late double textSize;
  late Color textColor;
  final RenderStyle renderStyle;

  BaseTextView(super.data, this.renderStyle,{Key? key}) : super(key: key) {
    switch (renderStyle) {
      case RenderStyle.Title:
        textSize = Dimens.dp_16;
        textColor = ColorPicker.Black;
        break;

      case RenderStyle.Description:
        textSize = Dimens.dp_12;
        textColor = ColorPicker.MineShaft;
        break;

      case RenderStyle.Small:
        textSize = Dimens.dp_10;
        textColor = ColorPicker.MineShaft;
        break;

      case RenderStyle.Medium:
        textSize = Dimens.dp_14;
        textColor = ColorPicker.MineShaft;
        break;

      case RenderStyle.High:
        textSize = Dimens.dp_16;
        textColor = ColorPicker.MineShaft;
        break;
    }
  }

  @override
  TextStyle? get style => TextStyle(
      fontSize: textSize,
      fontFamily: FontsPicker.HelveticaNeue,
      color: textColor);
}
