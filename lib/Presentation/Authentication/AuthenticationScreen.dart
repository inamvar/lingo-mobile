import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Authentication/Controller/AuthenticationScreenController.dart';
import 'package:lingo/Presentation/Authentication/Widgets/BaseAuthScreen.dart';
import 'package:lingo/Presentation/Authentication/Widgets/ConfirmButton.dart';
import 'package:lingo/Presentation/Authentication/Widgets/LoginFields.dart';
import 'package:lingo/Presentation/Authentication/Widgets/RegisterFields.dart';

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
      return ConfirmButton(buttonText: buttonText, onConfirm: (){});
    });
  }

  Widget buildFields() {
    return Obx(() {
      switch (controller.pageType.value) {
        case AuthPageTypes.LOGIN:
          return LoginFields();
        case AuthPageTypes.REGISTER:
          return RegisterFields();
      }
    });
  }
}
