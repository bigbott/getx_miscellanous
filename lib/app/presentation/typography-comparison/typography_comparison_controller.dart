import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Model
class TypographyVariant {
  final String name;
  final TextTheme textTheme;
  final String? description;

  TypographyVariant({
    required this.name,
    required this.textTheme,
    this.description,
  });
}

// ViewModel
class TypographyComparisonController extends GetxController {
  List<TypographyVariant> get variants {
    final typography2018 = Typography.material2018();
    final typography2021 = Typography.material2021();
    
    return [
      // Full Typography objects (constructors)
      TypographyVariant(
        name: 'material2018 (black)',
        textTheme: typography2018.black,
        description: 'Material 2018 with black text theme',
      ),
      TypographyVariant(
        name: 'material2018 (white)',
        textTheme: typography2018.white,
        description: 'Material 2018 with white text theme',
      ),
      TypographyVariant(
        name: 'material2021 (black)',
        textTheme: typography2021.black,
        description: 'Material 2021 with black text theme',
      ),
      TypographyVariant(
        name: 'material2021 (white)',
        textTheme: typography2021.white,
        description: 'Material 2021 with white text theme',
      ),
      
      // Geometry themes (have sizes but no colors)
      TypographyVariant(
        name: 'englishLike2018',
        textTheme: Typography.englishLike2018,
        description: 'Geometry only - needs color merge',
      ),
      TypographyVariant(
        name: 'englishLike2021',
        textTheme: Typography.englishLike2021,
        description: 'Geometry only - needs color merge',
      ),
      TypographyVariant(
        name: 'dense2018',
        textTheme: Typography.dense2018,
        description: 'Compact geometry for CJK scripts',
      ),
      TypographyVariant(
        name: 'dense2021',
        textTheme: Typography.dense2021,
        description: 'Compact geometry for CJK scripts',
      ),
      TypographyVariant(
        name: 'tall2018',
        textTheme: Typography.tall2018,
        description: 'Tall geometry for some scripts',
      ),
      TypographyVariant(
        name: 'tall2021',
        textTheme: Typography.tall2021,
        description: 'Tall geometry for some scripts',
      ),
      
      // Color themes merged with geometry
      // merge() takes properties from the argument, so geometry should be the argument
      TypographyVariant(
        name: 'englishLike2021 + blackCupertino',
        textTheme: Typography.englishLike2021.merge(Typography.blackCupertino),
        description: 'English geometry merged with black Cupertino colors',
      ),
      TypographyVariant(
        name: 'englishLike2021 + whiteCupertino',
        textTheme: Typography.englishLike2021.merge(Typography.whiteCupertino),
        description: 'English geometry merged with white Cupertino colors',
      ),
      TypographyVariant(
        name: 'englishLike2018 + blackMountainView',
        textTheme: Typography.englishLike2018.merge(Typography.blackMountainView),
        description: 'English geometry merged with black Mountain View colors',
      ),
      TypographyVariant(
        name: 'englishLike2018 + whiteMountainView',
        textTheme: Typography.englishLike2018.merge(Typography.whiteMountainView),
        description: 'English geometry merged with white Mountain View colors',
      ),
      TypographyVariant(
        name: 'dense2018 + blackRedwoodCity',
        textTheme: Typography.dense2018.merge(Typography.blackRedwoodCity),
        description: 'Dense geometry merged with black Redwood City colors',
      ),
      TypographyVariant(
        name: 'dense2018 + whiteRedwoodCity',
        textTheme: Typography.dense2018.merge(Typography.whiteRedwoodCity),
        description: 'Dense geometry merged with white Redwood City colors',
      ),
    ];
  }
}