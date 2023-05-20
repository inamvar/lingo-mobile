import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/FormTextFieldType.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Authentication/Controller/LoginFormController.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../infrastructure/Navigation/Routes.dart';
import 'FormTextField.dart';

class LoginForm extends StatelessWidget {
  LoginForm({Key? key}) : super(key: key);

  final controller = Get.find<LoginFormController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Form(
            key: controller.loginFormKey,
            child: Wrap(
              runSpacing: 5,
              children: [
                FormTextField(
                  required: false,
                  formTextFieldType: FormTextFieldType.EMAIL,
                  labelText: StringResource.email,
                  controller: controller.loginEmailController,
                ),
                FormTextField(
                  formTextFieldType: FormTextFieldType.PASSWORD,
                  labelText: StringResource.password,
                  controller: controller.loginPasswordController,
                ),
              ],
            ),
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
                controller.toRegister();
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
