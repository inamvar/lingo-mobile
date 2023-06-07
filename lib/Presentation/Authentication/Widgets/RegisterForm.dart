import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/FormTextFieldType.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Authentication/Controller/RegisterFormController.dart';
import 'package:lingo/Presentation/CommonWidgets/FormTextField.dart';

import '../../../Core/Configs/StringResource.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({Key? key}) : super(key: key);

  final controller = Get.find<RegisterFormController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Form(
            key: controller.registerFormKey,
            child: Wrap(
              runSpacing: 5,
              children: [
                FormTextField(
                  controller: controller.nameController,
                  labelText: StringResource.name,
                  required: true,
                ),
                FormTextField(
                  controller: controller.lastNameController,
                  labelText: StringResource.lastName,
                  required: true,
                ),
                FormTextField(
                  controller: controller.emailController,
                    labelText: StringResource.email,
                    required: true,
                    formTextFieldType: FormTextFieldType.EMAIL),
                FormTextField(
                  controller: controller.phoneController,
                  labelText: StringResource.phoneNumber,
                ),
                FormTextField(
                  controller: controller.referralController,
                  labelText: StringResource.referralCode,
                ),
                FormTextField(
                  controller: controller.passController,
                    labelText: StringResource.password,
                    required: true,
                    formTextFieldType: FormTextFieldType.PASSWORD),
                FormTextField(
                  controller: controller.repeatPassController,
                    labelText: StringResource.repeatPassword,
                    required: true,
                    formTextFieldType: FormTextFieldType.PASSWORD),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 60,
          ),
          TextButton(
              onPressed: () {
                controller.showLoginForm();
              },
              child: Text(
                StringResource.loginIntoAccount,
                style: const TextStyle()
                    .withIranSans(fontSize: 14,fontWeight: FontWeight.bold, color: colorScheme.primary),
              )),
        ],
      ),
    );
  }
}
