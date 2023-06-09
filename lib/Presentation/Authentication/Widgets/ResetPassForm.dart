import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/FormTextFieldType.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Authentication/Controller/ResetPassScreenController.dart';

import '../../../Core/Configs/StringResource.dart';
import '../Controller/AuthenticationScreenController.dart';
import '../../CommonWidgets/FormTextField.dart';

class ResetPassForm extends StatelessWidget {
  ResetPassForm({Key? key}) : super(key: key);

  final controller = Get.find<ResetPassScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Form(
            key: controller.resetPassFormKey,
            child: Wrap(
              runSpacing: 5,
              children: [
                FormTextField(
                    required: true,
                    controller: controller.emailController,
                    labelText: StringResource.email,
                    formTextFieldType: FormTextFieldType.EMAIL),
              ],
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          Text(
            StringResource.checkEmailTxt,
            textAlign: TextAlign.center,
            style: const TextStyle()
                .withIranSans(fontSize: 12, color: colorScheme.primary),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
