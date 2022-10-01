import 'package:flutter/material.dart';
import 'package:music_application/utils/colors_picker.dart';
import 'package:music_application/utils/dimensions.dart';
import 'package:music_application/utils/fonts_picker.dart';

enum RenderStyle { Title, Description, Small, Medium, High }

class BaseTextView extends Text {
  late double textSize;
  late Color textColor;
  final RenderStyle renderStyle;

  BaseTextView(super.data, this.renderStyle,{Key? key}) : super(key: key) {
    switch (renderStyle) {
      case RenderStyle.Title:
        textSize = Dimensions.dp_16;
        textColor = ColorPicker.Black;
        break;

      case RenderStyle.Description:
        textSize = Dimensions.dp_12;
        textColor = ColorPicker.MineShaft;
        break;

      case RenderStyle.Small:
        textSize = Dimensions.dp_10;
        textColor = ColorPicker.MineShaft;
        break;

      case RenderStyle.Medium:
        textSize = Dimensions.dp_14;
        textColor = ColorPicker.MineShaft;
        break;

      case RenderStyle.High:
        textSize = Dimensions.dp_16;
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
