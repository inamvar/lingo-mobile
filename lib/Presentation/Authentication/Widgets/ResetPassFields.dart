import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/Configs/StringResource.dart';
import '../Controller/AuthenticationScreenController.dart';
import 'AuthTextField.dart';

class ResetPassFields extends StatelessWidget {
  ResetPassFields({Key? key}) : super(key: key);

  final controller = Get.find<AuthenticationScreenController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Wrap(
            runSpacing: 5,
            children: const [
              AuthTextField(labelText: StringResource.email,),
              AuthTextField(labelText: StringResource.newPassword,),
            ],
          ),
          const SizedBox(height: 150 ,)
        ],
      ),
    );
  }
}

