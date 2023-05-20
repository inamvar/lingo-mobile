
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../../../Core/Configs/StringResource.dart';
import '../Controller/AuthenticationScreenController.dart';
import 'FormTextField.dart';

class ChangePassFields extends StatelessWidget {
  ChangePassFields({Key? key}) : super(key: key);

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
              FormTextField(labelText: StringResource.confirmCode,),
              FormTextField(labelText: StringResource.password,),
              FormTextField(labelText: StringResource.repeatPassword,),
            ],
          ),
          const SizedBox(
            height: 130,
          ),
        ],
      ),
    );
  }
}
