import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Authentication/Controller/AuthenticationScreenController.dart';
import 'package:lingo/Presentation/Authentication/Widgets/BaseAuthScreen.dart';
import 'package:lingo/Presentation/Authentication/Widgets/ConfirmButton.dart';
import 'package:lingo/Presentation/Authentication/Widgets/LoginForm.dart';
import 'package:lingo/Presentation/Authentication/Widgets/RegisterForm.dart';

import '../../Core/Dto/Enums/AuthPageTypes.dart';

class AuthenticationScreen extends StatelessWidget {
  AuthenticationScreen({Key? key}) : super(key: key);

  final controller = Get.find<AuthenticationScreenController>();

  @override
  Widget build(BuildContext context) {
    return BaseAuthScreen(
      fields: buildFields(),
      confirmButton: buildConfirmButton(),
    );
  }

  buildConfirmButton() {
    return Obx(() {
      var buttonText = StringResource.loginIntoAccount;
      switch (controller.pageType.value) {
        case AuthPageTypes.LOGIN:
          buttonText = StringResource.loginIntoAccount;
          break;
        case AuthPageTypes.REGISTER:
          buttonText = StringResource.register;
          break;
      }
      return ConfirmButton(
        isLoading: controller.isLoading.value,
          buttonText: buttonText,
          onConfirm: () {
            switch (controller.pageType.value) {
              case AuthPageTypes.LOGIN:
                controller.login();
                break;
              case AuthPageTypes.REGISTER:
                controller.register();
                break;
            }
          });
    });
  }

  Widget buildFields() {
    return Obx(() {
      switch (controller.pageType.value) {
        case AuthPageTypes.LOGIN:
          return LoginForm();
        case AuthPageTypes.REGISTER:
          return RegisterForm();
      }
    });
  }
}
