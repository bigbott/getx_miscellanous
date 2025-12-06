import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme_controller.dart';
import 'ez_theme_model.dart';

class ThemeChooser extends GetView<EzThemeController> {
  final List<ThemeModel> themes;
  final Function onThemeSelected;

  const ThemeChooser({
    super.key,
    required this.themes,
    required this.onThemeSelected,
  });

  @override
  Widget build(BuildContext context) {
    final itemCount = themes.length;

    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final theme = themes[index];
        final title = theme.title;
        final imagePath = controller.isDarkMode ? theme.bgImageDark : theme.bgImageLight;
        final primaryColor =
            controller.isDarkMode ? theme.colorSchemeDark.primary : theme.colorSchemeLight.primary;
        final secondaryColor = controller.isDarkMode
            ? theme.colorSchemeDark.secondary
            : theme.colorSchemeLight.secondary;
        final tertiaryColor =
            controller.isDarkMode ? theme.colorSchemeDark.tertiary : theme.colorSchemeLight.tertiary;

        return Container(
          height: 80,
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.fitWidth,
            ),
            border: BoxBorder.all(color: primaryColor, width: 5),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () => onThemeSelected.call(index),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Icon(
                        Icons.lens,
                        color: primaryColor,
                        size: 40,
                      ),
                      Icon(
                        Icons.lens,
                        color: secondaryColor,
                        size: 40,
                      ),
                      Icon(
                        Icons.lens,
                        color: tertiaryColor,
                         size: 40,
                      )
                    ],
                  )),
            ),
          ),
        );
      },
    );
  }
}
