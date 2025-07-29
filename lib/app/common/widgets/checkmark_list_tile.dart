import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:animated_checkmark/animated_checkmark.dart';

final class CheckmarkListTile extends AbstractSettingsTile {
  final List<CheckmarkListTileOption> options;
  final Function(int index) onTap;
  //final bool isMultiSelect;
  final Color? checkmarkColor;
  final Color? backgroundColor;

  const CheckmarkListTile({
    super.key,
    required this.options,
    required this.onTap,
    // this.isMultiSelect = false,
    this.checkmarkColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        
          color: backgroundColor ?? Theme.of(context).cardColor,
          border: Border.all(
            color: Colors.white,
            width: 0.5,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      clipBehavior: Clip.hardEdge,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: options.length,
        itemBuilder: (context, index) {
          return Material(
            color: backgroundColor ?? Theme.of(context).cardColor,
            child: InkWell(
              onTap: () {
                onTap(index);
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        options[index].title,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    const SizedBox(width: 16),
                    SizedBox(
                      width: 30,
                      height: 30,
                      child: Checkmark(
                        checked: options[index].checked,
                        color: checkmarkColor ?? Theme.of(context).primaryColor,
                        size: 30,
                        weight: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

final class CheckmarkListTileOption {
  final String title;
  bool checked;

  CheckmarkListTileOption({required this.title, required this.checked});
}
