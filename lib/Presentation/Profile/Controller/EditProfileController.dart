import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Enums/MessageType.dart';
import 'package:lingo/Core/Dto/Models/User.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/User/UpdateProfileRequestDtoUseCase.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Helpers/ShowMessage.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IUpdateProfileUseCase.dart';
import 'package:lingo/Presentation/Profile/Controller/ProfileScreenController.dart';
import 'package:lingo/infrastructure/DataSources/Local/IdentityLocalDataSourceImpl.dart';

class EditProfileController extends GetxController {
  TextEditingController? nameController;
  TextEditingController? lastNameController;
  TextEditingController? phoneController;
  TextEditingController? emailController;

  final editProfileFormKey = GlobalKey<FormState>();

  final IUpdateProfileUseCase updateProfileUseCase;

  EditProfileController({required this.updateProfileUseCase});

  @override
  void onInit() {
    initTextControllers();
    super.onInit();
  }

  @override
  void onClose() {
    nameController?.dispose();
    lastNameController?.dispose();
    phoneController?.dispose();
    emailController?.dispose();

    super.onClose();
  }

  initTextControllers() {
    nameController =
        TextEditingController(text: BaseBrain.user.value.firstName);
    lastNameController =
        TextEditingController(text: BaseBrain.user.value.lastName);
    phoneController =
        TextEditingController(text: BaseBrain.user.value.phoneNumber);
    emailController = TextEditingController(text: BaseBrain.user.value.email);
    update();
  }

  updateProfile() {
    if (isFormValid()) {
      Get.find<ProfileScreenController>().isLoading.value = true;

      updateProfileUseCase
          .execute(
              params: UpdateProfileRequestDtoUseCase(
        firstName: nameController?.text,
        lastName: lastNameController?.text,
        phoneNumber: phoneController?.text,
      ))
          .then((value) {
        Get.find<ProfileScreenController>().isLoading.value = false;
        value.fold(
            (serverError) => ShowMessage.getSnackBar(
                message: serverError.errorMessage ??
                    StringResource.serverErrorOccurred,
                type: MessageType.ERROR), (response) {
          var user = User.fromJson(response.data!.data!);
          IdentityLocalDataSourceImpl.saveUser(user);
          ShowMessage.getSnackBar(
              message: StringResource.editProfileSuccessMessage,
              type: MessageType.SUCCESS);
        });
      });
    }
  }

  bool isFormValid() {
    return editProfileFormKey.currentState?.validate() ?? false;
  }
}
