
import 'package:flutter/material.dart';

class Bg extends ThemeExtension<Bg> {
  final String bgImage;
  
  const Bg({required this.bgImage});
  
  @override
  Bg copyWith({String? bgImage}) {
    return Bg(
      bgImage: bgImage ?? this.bgImage,
    );
  }
  
  @override
  Bg lerp(ThemeExtension<Bg>? other, double t) {
    if (other is! Bg) return this;
    return Bg(
      bgImage: t < 0.5 ? bgImage : other.bgImage,
    );
  }
}