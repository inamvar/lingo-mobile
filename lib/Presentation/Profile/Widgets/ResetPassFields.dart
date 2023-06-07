import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/FormTextFieldType.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../CommonWidgets/FormTextField.dart';
import '../Controller/EditProfileController.dart';
import '../Controller/ResetPassController.dart';

class ResetPassFields extends StatelessWidget {
  ResetPassFields({Key? key}) : super(key: key);

  final ResetPassController resetPassController =
      Get.find<ResetPassController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ResetPassController>(
      init: resetPassController,
      didChangeDependencies: (state){
        state.controller?.initTextControllers();
      },
      builder: (ResetPassController controller) {
        return Column(
          children: [
            Form(
              key: controller.resetPassFormKey,
              child: Wrap(
                runSpacing: 5,
                children: [
                  FormTextField(
                    autovalidateMode: AutovalidateMode.disabled,
                    controller: controller.oldPassController,
                    labelText: StringResource.oldPassword,
                    formTextFieldType: FormTextFieldType.PASSWORD,
                    required: true,
                  ),
                  FormTextField(
                    autovalidateMode: AutovalidateMode.disabled,
                    controller: controller.newPassController,
                  labelText: StringResource.newPassword,
                    formTextFieldType: FormTextFieldType.PASSWORD,
                    required: true,
                  ),
                  FormTextField(
                      autovalidateMode: AutovalidateMode.disabled,
                      controller: controller.repeatPassController,
                      required: true,
                      labelText: StringResource.repeatPassword,
                      formTextFieldType: FormTextFieldType.PASSWORD),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
