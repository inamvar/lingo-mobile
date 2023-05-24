import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Presentation/Authentication/Widgets/BaseAuthScreen.dart';
import 'package:lingo/Presentation/Authentication/Widgets/ConfirmButton.dart';
import 'package:lingo/infrastructure/Navigation/Routes.dart';

import 'Widgets/ResetPassForm.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseAuthScreen(
        fields: ResetPassForm(),
        confirmButton: ConfirmButton(
            bottomMargin: 120,
            buttonText: StringResource.enter,
            onConfirm: onConfirm));
  }

  onConfirm() {
    Get.toNamed(Routes.changePassword);
  }
}
