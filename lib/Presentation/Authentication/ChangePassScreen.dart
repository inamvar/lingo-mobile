import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Presentation/Authentication/Widgets/BaseAuthScreen.dart';
import 'package:lingo/Presentation/Authentication/Widgets/ChangePassFields.dart';
import 'package:lingo/Presentation/CommonWidgets/ConfirmButton.dart';

import 'Controller/ChangePassScreenController.dart';

class ChangePassScreen extends StatelessWidget {
  ChangePassScreen({Key? key}) : super(key: key);

  final controller = Get.find<ChangePassScreenController>();

  @override
  Widget build(BuildContext context) {
    return BaseAuthScreen(
        fields: ChangePassFields(),
        confirmButton: Obx(() => ConfirmButton(
            bottomMargin: 40,
            isLoading: controller.isLoading.value,
            buttonText: StringResource.changePassword,
            onConfirm: onConfirm)));
  }

  onConfirm() {
    controller.changePassRequest();
  }
}
