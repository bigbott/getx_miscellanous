import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_backgrounds.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme_model.dart';
import 'ez_schemes.dart';
import 'ez_theme.dart';
import 'ez_color_scheme_extension.dart';

final class EzThemeController extends GetxController {
  var bgImageDark = EzBackgrounds.purpleTextureDark;
  var bgImageLight = EzBackgrounds.purpleTextureLight;

  var colorSchemeDark = EzSchemes.purpleTextureDark;
  var colorSchemeLight = EzSchemes.purpleTextureLight;

  List<ThemeModel> themeModels = [];

  ThemeData get themeDark {
    ImageCache().clear();
    colorSchemeDark = ColorScheme.dark().fromSurfaceAndSeeds(
      Color(0xFF1E0131),
      Colors.purple,
      Colors.amber,
      Colors.greenAccent
    );
   
    colorSchemeDark.printMe();

    return EzTheme.getIos(
      colorSchemeDark,
      Brightness.dark,
      bgImageDark,
    );
  }

  ThemeData get themeLight {
    ImageCache().clear();
    colorSchemeLight = 
    ColorScheme.light().fromSurfaceAndSeeds(
        Color(0xffEDDCE4), //surface
      Colors.purple,       //primarySeed 
      Colors.amber,        //secondarySeed
      Colors.greenAccent,  //tertiarySeed
    );

    colorSchemeLight.printMe();

    return EzTheme.getIos(
      colorSchemeLight,
      Brightness.light,
      bgImageLight,
    );
  }

  ThemeMode mode = ThemeMode.dark;
  late ThemeData theme = themeDark;
  late String bgImage = bgImageDark;
  late bool isDarkMode = true;

  @override
  void onInit() {
    super.onInit();
    fillThemeModels();
  }

  void changeMode() {
    
    theme = isDarkMode ? themeLight : themeDark;
    mode = isDarkMode ? ThemeMode.light : ThemeMode.dark;
    bgImage  = isDarkMode ? bgImageLight : bgImageDark;
    isDarkMode = !isDarkMode;
    
    Get.changeThemeMode(mode);
    Get.changeTheme(theme);
    update();
    Get.forceAppUpdate();
  }

  void changeTheme(ThemeModel themeModel) {
    bgImageDark = themeModel.bgImageDark;
    bgImageLight = themeModel.bgImageLight;
    loadBgImages(Get.context!);
    bgImage = Get.isDarkMode ? bgImageDark : bgImageLight;
    colorSchemeDark = themeModel.colorSchemeDark;
    colorSchemeLight = themeModel.colorSchemeLight;
    theme = Get.isDarkMode ? themeDark : themeLight;
    mode = Get.isDarkMode ? ThemeMode.dark : ThemeMode.light;
   // Get.changeThemeMode(mode);
    Get.changeTheme(theme);
    
    update();
    Get.forceAppUpdate();
  }

  void loadBgImages(BuildContext context) {
    precacheImage(AssetImage(bgImageDark), context);
    precacheImage(AssetImage(bgImageLight), context);
  }

  void fillThemeModels() {
    List<String> titles = [
      'BluePink',
      'BlueTexture',
      'Bordo',
      'GreenTexture',
      'Mramor',
      'Orange',
      'PinkFlower',
      'PinkFlowerGreen',
      'PurpleTexture',
      'Yellow',
      'PinkHeart',
      'PinkHeartGreen'
    ];

    themeModels = [
      ThemeModel(
        title: 'BluePink',
        bgImageDark: EzBackgrounds.bluePinkDark,
        bgImageLight: EzBackgrounds.bluePinkLight,
        colorSchemeDark: EzSchemes.bluePinkDark,
        colorSchemeLight: EzSchemes.bluePinkLight,
      ),
      ThemeModel(
        title: 'BlueTexture',
        bgImageDark: EzBackgrounds.blueTextureDark,
        bgImageLight: EzBackgrounds.blueTextureLight,
        colorSchemeDark: EzSchemes.blueTextureDark,
        colorSchemeLight: EzSchemes.blueTextureLight,
      ),
      ThemeModel(
        title: 'Bordo',
        bgImageDark: EzBackgrounds.bordoDark,
        bgImageLight: EzBackgrounds.bordoLight,
        colorSchemeDark: EzSchemes.bordoDark,
        colorSchemeLight: EzSchemes.bordoLight,
      ),
      ThemeModel(
        title: 'GreenTexture',
        bgImageDark: EzBackgrounds.greenTextureDark,
        bgImageLight: EzBackgrounds.greenTextureLight,
        colorSchemeDark: EzSchemes.greenTextureDark,
        colorSchemeLight: EzSchemes.greenTextureLight,
      ),
      ThemeModel(
        title: 'Mramor',
        bgImageDark: EzBackgrounds.mramorDark,
        bgImageLight: EzBackgrounds.mramorLight,
        colorSchemeDark: EzSchemes.mramorDark,
        colorSchemeLight: EzSchemes.mramorLight,
      ),
      ThemeModel(
        title: 'Orange',
        bgImageDark: EzBackgrounds.orangeDark,
        bgImageLight: EzBackgrounds.orangeLight,
        colorSchemeDark: EzSchemes.orangeDark,
        colorSchemeLight: EzSchemes.orangeLight,
      ),
      ThemeModel(
        title: 'PinkFlower',
        bgImageDark: EzBackgrounds.pinkFlowerDark,
        bgImageLight: EzBackgrounds.pinkFlowerLight,
        colorSchemeDark: EzSchemes.pinkFlowerDark,
        colorSchemeLight: EzSchemes.pinkFlowerLight,
      ),
      ThemeModel(
        title: 'PinkFlowerGreen',
        bgImageDark: EzBackgrounds.pinkFlowerDark,
        bgImageLight: EzBackgrounds.pinkFlowerLight,
        colorSchemeDark: EzSchemes.pinkFlowerDark1,
        colorSchemeLight: EzSchemes.pinkFlowerLight1,
      ),
      ThemeModel(
        title: 'PurpleTexture',
        bgImageDark: EzBackgrounds.purpleTextureDark,
        bgImageLight: EzBackgrounds.purpleTextureLight,
        colorSchemeDark: EzSchemes.purpleTextureDark,
        colorSchemeLight: EzSchemes.purpleTextureLight,
      ),
      ThemeModel(
        title: 'PinkHeart',
        bgImageDark: EzBackgrounds.pinkHeartDark,
        bgImageLight: EzBackgrounds.pinkHeartLight,
        colorSchemeDark: EzSchemes.pinkFlowerDark,
        colorSchemeLight: EzSchemes.pinkFlowerLight,
      ),
      ThemeModel(
        title: 'Yellow',
        bgImageDark: EzBackgrounds.blueYellowDark,
        bgImageLight: EzBackgrounds.blueYellowLight,
        colorSchemeDark: EzSchemes.yellowDark,
        colorSchemeLight: EzSchemes.yellowLight,
      ),
      ThemeModel(
        title: 'PinkHeartGreen',
        bgImageDark: EzBackgrounds.pinkHeartDark,
        bgImageLight: EzBackgrounds.pinkHeartLight,
        colorSchemeDark: EzSchemes.pinkFlowerDark1,
        colorSchemeLight: EzSchemes.pinkFlowerLight1,
      ),
    ];
  }
}
