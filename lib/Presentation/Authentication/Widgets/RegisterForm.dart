import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Authentication/Controller/RegisterFormController.dart';
import 'package:lingo/Presentation/Authentication/Widgets/FormTextField.dart';

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
          Wrap(
            runSpacing: 5,
            children: const [
              FormTextField(labelText: StringResource.name,),
              FormTextField(labelText: StringResource.lastName,),
              FormTextField(labelText: StringResource.email,),
              FormTextField(labelText: StringResource.phoneNumber,),
              FormTextField(labelText: StringResource.referralCode,),
              FormTextField(labelText: StringResource.password,),
              FormTextField(labelText: StringResource.repeatPassword,),
            ],
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
                style: const TextStyle().withIranSans(
                    fontSize: 12, color: colorScheme.primary),
              )),
        ],
      ),
    );
  }
}


