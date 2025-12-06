import 'package:flutter/material.dart';

abstract final class EzSchemes {
  EzSchemes._();

  //paired schmes for image backgrounds

  static final bluePinkLight = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF4B0A57),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFA641B9),
    onPrimaryContainer: Color(0xFFFAEDFD),
    secondary: Color(0xFF0F665F),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFF51BDB4),
    onSecondaryContainer: Color(0xFF0A433E),
    tertiary: Color(0xFF5A520C),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFBAAE45),
    onTertiaryContainer: Color(0xFF443E09),
    error: Color(0xFFB00020),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFF4E5B5F),
    onSurface: Color(0xFF000000),
  );

  static final bluePinkDark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromARGB(255, 255, 212, 255),
    onPrimary: Color(0xFF000000),
    primaryContainer: Color.fromARGB(255, 245, 210, 250),
    onPrimaryContainer: Color(0xFF080708),
    secondary: Color.fromARGB(255, 209, 250, 246),
    onSecondary: Color(0xFF000000),
    secondaryContainer: Color(0xFF758886),
    onSecondaryContainer: Color(0xFF0F1414),
    tertiary: Color.fromARGB(255, 247, 239, 182),
    onTertiary: Color(0xFF000000),
    tertiaryContainer: Color.fromARGB(255, 206, 201, 153),
    onTertiaryContainer: Color(0xFF000000),
    error: Color.fromARGB(255, 207, 129, 143),
    onError: Color(0xFF000000),
    surface: Color(0xFF4E5B5F),
    onSurface: Color(0xFFFFFFFF),
  );

  static final mramorLight = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF4B4401),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFB5A930),
    onPrimaryContainer: Color(0xFF3C3701),
    secondary: Color(0xFF024F3C),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFF32B897),
    onSecondaryContainer: Color(0xFF024131),
    tertiary: Color(0xFF024F13),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFF32B850),
    onTertiaryContainer: Color(0xFF023C0E),
    error: Color(0xFFB00020),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFFDEDEDE),
    onSurface: Color(0xFF000000),
  );

  static final mramorDark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFF8F3B1),
    onPrimary: Color(0xFF000000),
    primaryContainer: Color(0xFFC9C37A),
    onPrimaryContainer: Color(0xFF504A07),
    secondary: Color(0xFFDADDDD),
    onSecondary: Color(0xFF000000),
    secondaryContainer: Color(0xFFA7AAAA),
    onSecondaryContainer: Color(0xFF363A3A),
    tertiary: Color(0xFFF3F3F1),
    onTertiary: Color(0xFF000000),
    tertiaryContainer: Color(0xFFC1C1BD),
    onTertiaryContainer: Color(0xFF4A4A40),
    error: Color(0xFFCF6679),
    onError: Color(0xFF000000),
    surface: Color(0xFF1C1C1C),
    onSurface: Color(0xFFFFFFFF),
  );

  //blue texture
  //! works perfectly on blue yellow background
  static final blueTextureLight = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF015038),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF31B990),
    onPrimaryContainer: Color(0xFF01412E),
    secondary: Color(0xFF5A3E01),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFC29532),
    onSecondaryContainer: Color(0xFF3D2A01),
    tertiary: Color(0xFF314B01),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFF86B530),
    onTertiaryContainer: Color(0xFF2B4101),
    error: Color(0xFFB00020),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFFDEDEDE),
    onSurface: Color(0xFF000000),
  );

  static final blueTextureDark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFA9F8E0),
    onPrimary: Color(0xFF000000),
    primaryContainer: Color(0xFF74C7AE),
    onPrimaryContainer: Color(0xFF07503A),
    secondary: Color(0xFFF7DEA8),
    onSecondary: Color(0xFF000000),
    secondaryContainer: Color(0xFFC5AC74),
    onSecondaryContainer: Color(0xFF4F3907),
    tertiary: Color(0xFFD7F3A2),
    onTertiary: Color(0xFF000000),
    tertiaryContainer: Color(0xFFA4BF70),
    onTertiaryContainer: Color(0xFF334809),
    error: Color(0xFFCF6679),
    onError: Color(0xFF000000),
    surface: Color(0xFF625E6B),
    onSurface: Color(0xFFFFFFFF),
  );

  //bordo
  static final bordoLight = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF005107),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFF2FBB3B),
    onPrimaryContainer: Color(0xFF003D05),
    secondary: Color(0xFF424700),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFAAB32D),
    onSecondaryContainer: Color(0xFF393D00),
    tertiary: Color(0xFF0220CA),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFF8593E0),
    onTertiaryContainer: Color(0xFF011688),
    error: Color(0xFFB00020),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFFDEB3B4),
    onSurface: Color(0xFF000000),
  );

  static final bordoDark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromARGB(255, 200, 250, 204),
    onPrimary: Color(0xFF000000),
    primaryContainer: Color(0xFFABE3B1),
    onPrimaryContainer: Color(0xFF00660A),
    secondary: Color(0xFFFCFDE8),
    onSecondary: Color(0xFF000000),
    secondaryContainer: Color(0xFFD8DAA5),
    onSecondaryContainer: Color(0xFF5A5E08),
    tertiary: Color(0xFFA2AEF3),
    onTertiary: Color(0xFF000000),
    tertiaryContainer: Color(0xFF707BBF),
    onTertiaryContainer: Color(0xFF040820),
    error: Color(0xFFCF6679),
    onError: Color(0xFF000000),
    surface: Color(0xFF6E513B),
    onSurface: Color(0xFFFFFFFF),
  );

  //purple texture
  static final purpleTextureLight = ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromARGB(255, 90, 92, 1),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFA5A72A),
    onPrimaryContainer: Color(0xFF373800),
    secondary: Color(0xFF003D3D),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFF2BABAB),
    onSecondaryContainer: Color(0xFF003333),
    tertiary: Color(0xFF233D01),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFF74AA2D),
    onTertiaryContainer: Color(0xFF1D3201),
    error: Color(0xFFB00020),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFFCBC2D4),
    onSurface: Color(0xFF000000),
  );

  static final purpleTextureDark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFF5F7A9),
    onPrimary: Color(0xFF000000),
    primaryContainer: Color(0xFFC4C674),
    onPrimaryContainer: Color(0xFF4D4F07),
    secondary: Color(0xFFBAF5F5),
    onSecondary: Color(0xFF000000),
    secondaryContainer: Color(0xFF83C6C6),
    onSecondaryContainer: Color(0xFF0C5050),
    tertiary: Color(0xFFD6F8AA),
    onTertiary: Color(0xFF000000),
    tertiaryContainer: Color(0xFFA3C775),
    onTertiaryContainer: Color(0xFF305007),
    error: Color(0xFFCF6679),
    onError: Color(0xFF000000),
    surface: Color(0xFF09002D),
    onSurface: Color(0xFFFFFFFF),
  );

  //green texture
  static final greenTextureLight = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF671E97),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFAE84CA),
    onPrimaryContainer: Color(0xFF3A1155),
    secondary: Color(0xFF5A4D02),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFC1AC34),
    onSecondaryContainer: Color(0xFF463C02),
    tertiary: Color(0xFF011E7C),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFF4767CF),
    onTertiaryContainer: Color(0xFFF0F3FF),
    error: Color(0xFFB00020),
    onError: Color(0xFFFFFFFF),
    surface: Color(0xFFE4F6E5),
    onSurface: Color(0xFF000000),
  );

  static final greenTextureDark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFC8B3D6),
    onPrimary: Color(0xFF000000),
    primaryContainer: Color(0xFF9581A2),
    onPrimaryContainer: Color(0xFF201528),
    secondary: Color(0xFFF7EDB6),
    onSecondary: Color(0xFF000000),
    secondaryContainer: Color(0xFFC8BD7F),
    onSecondaryContainer: Color(0xFF534709),
    tertiary: Color(0xFFA5BAFC),
    onTertiary: Color(0xFF000000),
    tertiaryContainer: Color(0xFF7086CB),
    onTertiaryContainer: Color(0xFF02144A),
    error: Color(0xFFCF6679),
    onError: Color(0xFF000000),
    surface: Color(0xFF003600),
    onSurface: Color(0xFFFFFFFF),
  );

  //orange
  static final orangeLight = 
ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF594101),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFC19A32),
  onPrimaryContainer: Color(0xFF423001),
  secondary: Color(0xFF225106),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF68B63A),
  onSecondaryContainer: Color(0xFF1A3E05),
  tertiary: Color(0xFF6802AB),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFAE6DD9),
  onTertiaryContainer: Color(0xFF2B0147),
  error: Color(0xFFB00020),
  onError: Color(0xFFFFFFFF),
  surface: Color(0xFFEFE0BE),
  onSurface: Color(0xFF000000),);

  static final orangeDark = 
ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFAECAD),
  onPrimary: Color(0xFF000000),
  primaryContainer: Color(0xFFCABB77),
  onPrimaryContainer: Color(0xFF524405),
  secondary: Color(0xFFCEFCB4),
  onSecondary: Color(0xFF000000),
  secondaryContainer: Color(0xFF99CF7B),
  onSecondaryContainer: Color(0xFF225804),
  tertiary: Color(0xFFE6C6FB),
  onTertiary: Color(0xFF000000),
  tertiaryContainer: Color(0xFFB58AD1),
  onTertiaryContainer: Color(0xFF45086E),
  error: Color(0xFFCF6679),
  onError: Color(0xFF000000),
  surface: Color(0xFF4F3B0A),
  onSurface: Color(0xFFFFFFFF),);

  
  static final pinkFlowerLight = 
ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF3E5E03),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF86B432),
  onPrimaryContainer: Color(0xFF273C02),
  secondary: Color(0xFF084A68),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF459CC3),
  onSecondaryContainer: Color(0xFF042839),
  tertiary: Color(0xFF6802AB),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFAE6DD9),
  onTertiaryContainer: Color(0xFF2B0147),
  error: Color(0xFFB00020),
  onError: Color(0xFFFFFFFF),
  surface: Color(0xFFEDDCE4),
  onSurface: Color(0xFF000000),);
  
  static final pinkFlowerDark = 
ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFD9F3AA),
  onPrimary: Color(0xFF000000),
  primaryContainer: Color(0xFFA6C176),
  onPrimaryContainer: Color(0xFF354C0B),
  secondary: Color(0xFFA0DAF5),
  onSecondary: Color(0xFF000000),
  secondaryContainer: Color(0xFF6EA7C1),
  onSecondaryContainer: Color(0xFF08354A),
  tertiary: Color(0xFFCE9DEE),
  onTertiary: Color(0xFF000000),
  tertiaryContainer: Color(0xFF9B6CB9),
  onTertiaryContainer: Color(0xFF0F0416),
  error: Color(0xFFCF6679),
  onError: Color(0xFF000000),
  surface: Color(0xFF1B0000),
  onSurface: Color(0xFFFFFFFF),);

   static final pinkFlowerLight1 = 
ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF7E0382),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFCB4FCF),
  onPrimaryContainer: Color(0xFF270128),
  secondary: Color(0xFF084A68),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFF459CC3),
  onSecondaryContainer: Color(0xFF042839),
  tertiary: Color(0xFF1E5101),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFF63BA31),
  onTertiaryContainer: Color(0xFF184101),
  error: Color(0xFFB00020),
  onError: Color(0xFFFFFFFF),
  surface: Color(0xFFEDDCE4),
  onSurface: Color(0xFF000000),);

   static final pinkFlowerDark1 = 
ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFF1AAF3),
  onPrimary: Color(0xFF000000),
  primaryContainer: Color(0xFFBF76C1),
  onPrimaryContainer: Color(0xFF410943),
  secondary: Color(0xFFA0DAF5),
  onSecondary: Color(0xFF000000),
  secondaryContainer: Color(0xFF6EA7C1),
  onSecondaryContainer: Color(0xFF08354A),
  tertiary: Color(0xFFC4EE9D),
  onTertiary: Color(0xFF000000),
  tertiaryContainer: Color(0xFF91B96C),
  onTertiaryContainer: Color(0xFF28460C),
  error: Color(0xFFCF6679),
  onError: Color(0xFF000000),
  surface: Color(0xFF1B0000),
  onSurface: Color(0xFFFFFFFF),);



  //old experiments

  static final pinkLight = ColorScheme(
    brightness: Brightness.light,
    primary: const Color(0xFF900437),
    onPrimary: Colors.white,
    primaryContainer: Colors.pink.shade50,
    onPrimaryContainer: Colors.pink.shade900,
    secondary: const Color(0xFF015149),
    onSecondary: Colors.white,
    secondaryContainer: Colors.teal.shade100,
    onSecondaryContainer: Colors.teal.shade900,
    tertiary: const Color(0xFF793502),
    onTertiary: Colors.white,
    tertiaryContainer: Colors.amber.shade100,
    onTertiaryContainer: Colors.brown.shade900,
    error: Colors.red.shade700,
    onError: Colors.white,
    errorContainer: Colors.red.shade100,
    onErrorContainer: Colors.red.shade900,
    surface: Colors.pink.shade50,
    onSurface: Colors.black87,
    onSurfaceVariant: Colors.brown.shade700,
    outline: Colors.pink.shade300,
    outlineVariant: Colors.pink.shade200,
    shadow: Colors.black54,
    scrim: Colors.black45,
    inverseSurface: Colors.pink.shade700,
    onInverseSurface: Colors.white,
    inversePrimary: Colors.pink.shade200,
  );

  static final greenLight = ColorScheme(
    brightness: Brightness.light,
    primary: const Color.fromARGB(255, 7, 99, 12),
    onPrimary: Colors.white,
    primaryContainer: Colors.green.shade100,
    onPrimaryContainer: Colors.green.shade900,
    secondary: const Color.fromARGB(255, 100, 48, 8),
    onSecondary: Colors.white,
    secondaryContainer: Colors.amber.shade100,
    onSecondaryContainer: Colors.amber.shade900,
    tertiary: const Color.fromARGB(255, 49, 12, 124),
    onTertiary: Colors.white,
    tertiaryContainer: Colors.deepPurple.shade100,
    onTertiaryContainer: Colors.deepPurple.shade900,
    error: Colors.red.shade700,
    onError: Colors.white,
    errorContainer: Colors.red.shade100,
    onErrorContainer: Colors.red.shade900,
    surface: Colors.green.shade50,
    onSurface: Colors.black87,
    onSurfaceVariant: Colors.green.shade700,
    outline: Colors.green.shade400,
    outlineVariant: Colors.green.shade200,
    shadow: Colors.black54,
    scrim: Colors.black45,
    inverseSurface: Colors.green.shade800,
    onInverseSurface: Colors.green.shade50,
    inversePrimary: Colors.green.shade200,
  );

  static final greyLight = ColorScheme(
    brightness: Brightness.light,
    primary: const Color(0xFF3B4C39),
    onPrimary: Colors.white,
    primaryContainer: const Color(0xFFC0CFC0),
    onPrimaryContainer: const Color(0xFF1E261D),
    secondary: const Color(0xFF624228),
    onSecondary: Colors.white,
    secondaryContainer: const Color(0xFFF0E0D0),
    onSecondaryContainer: const Color(0xFF312114),
    tertiary: const Color(0xFF196329),
    onTertiary: Colors.white,
    tertiaryContainer: const Color(0xFFD0F0D8),
    onTertiaryContainer: const Color(0xFF0C3114),
    error: Colors.red.shade700,
    onError: Colors.white,
    errorContainer: Colors.red.shade100,
    onErrorContainer: Colors.red.shade900,
    surface: const Color(0xFFF7F1DE),
    onSurface: const Color(0xFF242424),
    onSurfaceVariant: const Color(0xFF444843),
    outline: const Color(0xFF747973),
    outlineVariant: const Color(0xFFC4C8C2),
    shadow: Colors.black54,
    scrim: Colors.black45,
    inverseSurface: const Color(0xFF30312F),
    onInverseSurface: Colors.white,
    inversePrimary: const Color(0xFFA5D7A5),
  );

  static final yellowLight = ColorScheme(
    brightness: Brightness.light,
    primary: const Color(0xFF3A3907), // #3A3907FF
    onPrimary: Colors.white,
    primaryContainer: const Color(0xFFF5F5DC), // Light yellow container
    onPrimaryContainer: const Color(0xFF1C1C03), // Dark yellow for contrast
    secondary: const Color(0xFF3D0842), // #3D0842FF
    onSecondary: Colors.white,
    secondaryContainer: const Color(0xFFF3E5F5), // Light purple container
    onSecondaryContainer: const Color(0xFF1E0421), // Dark purple for contrast
    tertiary: const Color(0xFF062E29), // #062E29FF
    onTertiary: Colors.white,
    tertiaryContainer: const Color(0xFFE0F2F1), // Light teal container
    onTertiaryContainer: const Color(0xFF031714), // Dark teal for contrast
    error: Colors.red.shade700,
    onError: Colors.white,
    errorContainer: Colors.red.shade100,
    onErrorContainer: Colors.red.shade900,
    surface: const Color(0xFFB7D7EC), // #B7D7ECFF
    onSurface: Colors.black87,
    onSurfaceVariant: const Color(0xFF3A3907),
    outline: const Color(0xFF8A8A70), // Muted yellow-green
    outlineVariant: const Color(0xFFD0D0C0), // Light yellow-green
    shadow: Colors.black54,
    scrim: Colors.black45,
    inverseSurface: const Color(0xFF2A2A05), // Dark yellow
    onInverseSurface: Colors.white,
    inversePrimary: const Color(0xFFE6E680), // Light yellow accent
  );

  // Dark Schemes

  static final tealDark = ColorScheme(
    brightness: Brightness.dark,

    primary: const Color(0xFFa7ffeb),
    onPrimary: Colors.black,
    primaryContainer: Colors.teal.shade900,
    onPrimaryContainer: Colors.tealAccent.shade100,

    secondary: const Color(0xFFCBAB2A), //CBAB2A
    onSecondary: Colors.black,
    secondaryContainer: Colors.amber.shade900,
    onSecondaryContainer: Colors.amberAccent.shade100,

    tertiary: const Color(0xffEB94B2),
    onTertiary: Colors.black,
    tertiaryContainer: Colors.pink.shade900,
    onTertiaryContainer: Colors.pinkAccent.shade100,

    error: Colors.redAccent.shade200,
    onError: Colors.black,
    errorContainer: Colors.red.shade900,
    onErrorContainer: Colors.redAccent.shade100,

    surface: Colors.grey.shade900,
    onSurface: Colors.white70,

    onSurfaceVariant: Colors.grey.shade300,

    outline: Colors.grey.shade600,
    outlineVariant: Colors.grey.shade500,
    shadow: Colors.white38,
    scrim: Colors.white54,

    inverseSurface: Colors.grey.shade200,
    onInverseSurface: Colors.grey.shade900,
    inversePrimary: Colors.tealAccent.shade100,
  );

  static final yellowDark = ColorScheme(
    brightness: Brightness.dark,
    primary: const Color(0xFFECECA2),
    onPrimary: Colors.grey.shade900,
    primaryContainer: const Color.fromARGB(255, 75, 75, 4),
    onPrimaryContainer: Colors.yellowAccent.shade100,
    secondary: const Color.fromARGB(255, 177, 134, 163),
    onSecondary: Colors.grey.shade900,
    secondaryContainer: Colors.purple.shade900,
    onSecondaryContainer: const Color.fromARGB(255, 241, 202, 228),
    tertiary: const Color.fromARGB(255, 101, 138, 139),
    onTertiary: Colors.grey.shade900,
    tertiaryContainer: const Color.fromARGB(255, 3, 59, 66),
    onTertiaryContainer: const Color.fromARGB(255, 171, 239, 241),
    error: Colors.redAccent.shade200,
    onError: Colors.black,
    errorContainer: Colors.red.shade900,
    onErrorContainer: Colors.redAccent.shade100,
    surface: Colors.grey.shade900,
    onSurface: Colors.white70,
    onSurfaceVariant: Colors.grey.shade300,
    outline: Colors.grey.shade600,
    outlineVariant: Colors.grey.shade500,
    shadow: Colors.white38,
    scrim: Colors.white54,
    inverseSurface: Colors.grey.shade200,
    onInverseSurface: Colors.grey.shade900,
    inversePrimary: Colors.tealAccent.shade100,
  );

  static final yellowDark1 = ColorScheme(
    brightness: Brightness.dark,

    primary: const Color(0xFFF7F6B3), // #F7F6B3
    onPrimary: Colors.black87,
    primaryContainer: const Color(0xFF7A7A00),
    onPrimaryContainer: const Color(0xFFF7F6B3),

    secondary: const Color(0xFFEBD3ED), // #EBD3ED
    onSecondary: Colors.black87,
    secondaryContainer: const Color(0xFF6B4C6D),
    onSecondaryContainer: const Color(0xFFEBD3ED),

    tertiary: const Color(0xFFD3EDEA), // #D3EDEA
    onTertiary: Colors.black87,
    tertiaryContainer: const Color(0xFF4D7C76),
    onTertiaryContainer: const Color(0xFFD3EDEA),

    error: Colors.redAccent.shade200,
    onError: Colors.black,
    errorContainer: Colors.red.shade900,
    onErrorContainer: Colors.redAccent.shade100,

    surface: const Color(0xFF0F517D), // #0F517D
    onSurface: Colors.white,

    onSurfaceVariant: Colors.grey.shade300,

    outline: Colors.grey.shade600,
    outlineVariant: Colors.grey.shade500,
    shadow: Colors.white38,
    scrim: Colors.white54,

    inverseSurface: Colors.grey.shade200,
    onInverseSurface: Colors.grey.shade900,
    inversePrimary: const Color(0xFF7A7A00),
  );

  static final greenDark = ColorScheme(
    brightness: Brightness.dark,
    primary: const Color.fromARGB(255, 192, 245, 208),
    onPrimary: Colors.grey.shade900,
    primaryContainer: const Color.fromARGB(255, 4, 75, 13),
    onPrimaryContainer: const Color.fromARGB(255, 192, 245, 208),
    secondary: const Color.fromARGB(255, 192, 186, 252),
    onSecondary: Colors.grey.shade900,
    secondaryContainer: const Color.fromARGB(255, 32, 20, 140),
    onSecondaryContainer: const Color.fromARGB(255, 206, 202, 241),
    tertiary: const Color.fromARGB(255, 171, 239, 241),
    onTertiary: Colors.grey.shade900,
    tertiaryContainer: const Color.fromARGB(255, 3, 59, 66),
    onTertiaryContainer: const Color.fromARGB(255, 171, 239, 241),
    error: Colors.redAccent.shade200,
    onError: Colors.black,
    errorContainer: Colors.red.shade900,
    onErrorContainer: Colors.redAccent.shade100,
    surface: Colors.grey.shade800,
    onSurface: Colors.white,
    onSurfaceVariant: Colors.grey.shade300,
    outline: Colors.grey.shade600,
    outlineVariant: Colors.grey.shade500,
    shadow: Colors.white38,
    scrim: Colors.white54,
    inverseSurface: Colors.grey.shade200,
    onInverseSurface: Colors.grey.shade900,
    inversePrimary: Colors.tealAccent.shade100,
  );

  static final iosDark = ColorScheme.fromSeed(
    seedColor: const Color(0xFF0A84FF), // iOS blue for dark mode
    brightness: Brightness.dark,
    primary: const Color(0xFF0A84FF),
    secondary: const Color(0xFF5E5CE6),
    surface: const Color(0xFF1C1C1E),
    error: const Color(0xFFFF453A),
    surfaceContainerHighest: const Color(0xFF38383A),
    onSurfaceVariant: const Color(0xFF8E8E93),
    tertiary: const Color(0xFF32D74B),
  );
}
