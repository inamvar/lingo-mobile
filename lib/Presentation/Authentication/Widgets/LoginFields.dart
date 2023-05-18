import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/AuthPageTypes.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../infrastructure/Navigation/Routes.dart';
import '../Controller/AuthenticationScreenController.dart';
import 'AuthTextField.dart';

class LoginFields extends StatelessWidget {
  LoginFields({Key? key}) : super(key: key);

  final controller = Get.find<AuthenticationScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Wrap(
            runSpacing: 5,
            children: [
              AuthTextField(
                labelText: StringResource.email,
                controller: controller.loginEmailController,
              ),
              AuthTextField(
                labelText: StringResource.password,
                controller: controller.loginPasswordController,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {
                Get.toNamed(Routes.resetPassword);
              },
              child: Text(
                StringResource.forgotPassword,
                style: const TextStyle()
                    .withIranSans(fontSize: 12, color: colorScheme.primary),
              )),
          const SizedBox(
            height: 60,
          ),
          TextButton(
              onPressed: () {
                controller.toRegisterFields();
              },
              child: Text(
                StringResource.registerButtonTxt,
                style: const TextStyle()
                    .withIranSans(fontSize: 12, color: colorScheme.primary),
              )),
        ],
      ),
    );
  }
}
