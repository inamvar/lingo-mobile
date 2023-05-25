import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Presentation/Authentication/Widgets/BaseAuthScreen.dart';
import 'package:lingo/Presentation/Authentication/Widgets/ConfirmButton.dart';
import 'package:lingo/infrastructure/Navigation/Routes.dart';

import 'Controller/ResetPassScreenController.dart';
import 'Widgets/ResetPassForm.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  final controller = Get.find<ResetPassScreenController>();

  @override
  Widget build(BuildContext context) {
    return BaseAuthScreen(
        fields: ResetPassForm(),
        confirmButton: Obx(() => ConfirmButton(
            bottomMargin: 120,
            buttonText: StringResource.enter,
            isLoading: controller.isLoading.value,
            onConfirm: onConfirm)));
  }

  onConfirm() {
    controller.resetPassRequest();
  }
}
