import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Authentication/Widgets/AuthTextField.dart';

import '../../../Core/Configs/StringResource.dart';
import '../Controller/AuthenticationScreenController.dart';

class RegisterFields extends StatelessWidget {
  RegisterFields({Key? key}) : super(key: key);

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
              AuthTextField(labelText: StringResource.name,),
              AuthTextField(labelText: StringResource.lastName,),
              AuthTextField(labelText: StringResource.email,),
              AuthTextField(labelText: StringResource.phoneNumber,),
              AuthTextField(labelText: StringResource.referralCode,),
              AuthTextField(labelText: StringResource.password,),
              AuthTextField(labelText: StringResource.repeatPassword,),
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
                 controller.toLoginFields();
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


