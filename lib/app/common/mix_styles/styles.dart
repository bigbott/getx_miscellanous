import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

Style blue100 = Style(
  $box.height(100),
  $box.width(100),
  $box.margin(10, 20),
  $box.color.blue(),
  $box.borderRadius(10),
  $box.border(
    color: Colors.black,
    width: 1,
    style: BorderStyle.solid,
  ),
);

Style green20 = Style(
  $text.color.green(),
  $text.fontSize(20),
);

Style row20EndMax = Style(
  $box.height(100),
  $flex.gap(20),
  $flex.mainAxisAlignment.end(),
  $flex.mainAxisSize.max(),
);

Style boxW100green = Style(
  $box.color.green(),
  $box.width(100),
);

Style boxW100red = Style(
  $box.color.red(),
  $box.width(100),
);
