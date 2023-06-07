import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Presentation/CommonWidgets/FormTextField.dart';
import 'package:lingo/Presentation/Profile/Controller/EditProfileController.dart';

class EditProfileFields extends StatelessWidget {
  EditProfileFields({Key? key}) : super(key: key);

  final EditProfileController editProfileController =
      Get.find<EditProfileController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditProfileController>(
      init: editProfileController,
      didChangeDependencies: (state){
        state.controller?.initTextControllers();
      },
      builder: (EditProfileController controller) {
        return Column(
          children: [
            Form(
              key: controller.editProfileFormKey,
              child: Wrap(
                runSpacing: 5,
                children: [
                  FormTextField(
                    labelText: StringResource.name,
                    controller: controller.nameController,
                    required: true,
                  ),
                  FormTextField(
                    controller: controller.lastNameController,
                    labelText: StringResource.lastName,
                    required: true,
                  ),
                  FormTextField(
                      controller: controller.phoneController,
                      labelText: StringResource.phoneNumber),
                  FormTextField(
                    controller: controller.emailController,
                    labelText: StringResource.email,
                    readOnly: true,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
