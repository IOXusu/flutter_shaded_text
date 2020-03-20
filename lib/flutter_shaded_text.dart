library flutter_shaded_text;

import 'package:flutter/material.dart';

typedef ShadeBuilder = Widget Function(
    BuildContext context, String text, Color color);

class ShadedText extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color shadeColor;
  final double xTans;
  final double yTans;

  final ShadeBuilder shadeBuilder;

  ShadedText(
      {this.text,
      this.textColor,
      this.shadeColor,
      this.xTans,
      this.yTans,
      this.shadeBuilder})
      : assert(text != null),
        assert(textColor != null),
        assert(shadeColor != null),
        assert(shadeBuilder != null);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Transform(
          transform:
              Matrix4.translationValues(xTans ?? 10.0, yTans ?? 10.0, 0.0),
          child: shadeBuilder(context, text, shadeColor),
        ),
        shadeBuilder(context, text, textColor),
      ],
    );
  }
}
