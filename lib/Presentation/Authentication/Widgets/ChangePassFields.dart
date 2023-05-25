import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/FormTextFieldType.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Authentication/Controller/ChangePassScreenController.dart';

import '../../../Core/Configs/StringResource.dart';
import '../Controller/AuthenticationScreenController.dart';
import 'FormTextField.dart';

class ChangePassFields extends StatelessWidget {
  ChangePassFields({Key? key}) : super(key: key);

  final controller = Get.find<ChangePassScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Form(
            key: controller.changePassFormKey,
            child: Wrap(
              runSpacing: 5,
              children: [
                FormTextField(
                  labelText: StringResource.confirmCode,
                  controller: controller.codeController,
                  required: true,
                ),
                FormTextField(
                  labelText: StringResource.password,
                  controller: controller.passController,
                  formTextFieldType: FormTextFieldType.PASSWORD,
                  required: true,
                ),
                FormTextField(
                  labelText: StringResource.repeatPassword,
                  controller: controller.repeatPassController,
                  formTextFieldType: FormTextFieldType.PASSWORD,
                  required: true,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 130,
          ),
        ],
      ),
    );
  }
}
