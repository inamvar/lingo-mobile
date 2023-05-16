import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/AuthPageTypes.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../../../Core/Configs/StringResource.dart';
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
            children: const [
              AuthTextField(labelText: StringResource.email,),
              AuthTextField(labelText: StringResource.password,),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () {
                controller.toResetPass();
              },
              child: Text(
                StringResource.forgotPassword,
                style: const TextStyle().withIranSans(
                    fontSize: 12, color: colorScheme.primary),
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
                style: const TextStyle().withIranSans(
                    fontSize: 12, color: colorScheme.primary),
              )),
        ],
      ),
    );
  }
}
