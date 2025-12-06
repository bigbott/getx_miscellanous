import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/ez/ez_appbar.dart';
import 'package:getx_miscellanous/app/common/ez/ez_scaffold.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_bg_exension.dart';
import 'package:getx_miscellanous/app/presentation/image-bg/widgets/registration.dart';

import 'image_bg_controller.dart';

class ImageBgView extends GetView<ImageBgController> {
  const ImageBgView({super.key});
  @override
  Widget build(BuildContext context) {
    return EzScaffold(
    //   bgImage: Get.theme.extension<Bg>()!.bgImage,
      appBar: EzAppBar(
        title: 'Registration',
        backTitle: 'Home',
      ),
      body: RegistrationPage(),
    );
  }
}
