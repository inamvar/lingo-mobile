import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../../../Core/Configs/StringResource.dart';
import '../Controller/AuthenticationScreenController.dart';
import 'AuthTextField.dart';

class ResetPassFields extends StatelessWidget {
  ResetPassFields({Key? key}) : super(key: key);

  final controller = Get.find<AuthenticationScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            runSpacing: 5,
            children: const [
              AuthTextField(labelText: StringResource.email,),
            ],
          ),
          const SizedBox(
            height: 120,
          ),
          Text(
            StringResource.checkEmailTxt,
            textAlign: TextAlign.center,
            style: const TextStyle().withIranSans(
                fontSize: 12, color: colorScheme.primary),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
