import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/ez/ez_back_button.dart';
import 'package:getx_miscellanous/app/common/ez/ez_text.dart';
import 'package:getx_miscellanous/app/common/ez/ios_back_button.dart';

final class EzAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? backTitle;
  final String? title;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  const EzAppBar({
    super.key,
    this.backTitle,
    this.title,
    this.actions,
    this.leadingOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        actions: actions,
        title: title != null
            ? Padding(
              padding: EdgeInsets.only(top: Get.height/40),
              child: EzText(
                  title!,
                  fontSize: 18,
                ),
            )
            : null,
        centerTitle: true,
        leadingWidth: 120,
        leading: Navigator.canPop(context) ?  IosBackButton(
          onPressed: leadingOnPressed,
          text: backTitle,
        ) : null,
      ),
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
