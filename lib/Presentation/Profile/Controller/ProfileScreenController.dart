import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/ProfilePageType.dart';

import '../../../Core/Utils/InjectionContainer.dart';
import 'EditProfileController.dart';
import 'ResetPassController.dart';

class ProfileScreenController extends GetxController {
  var pageType = ProfilePageType.PROFILE.obs;

  var isLoading = false.obs;

  @override
  void onInit() {
    Get.lazyPut(
        () => EditProfileController(updateProfileUseCase: appSingleton()));
    Get.lazyPut(() => ResetPassController(changePassUseCase: appSingleton()));
    super.onInit();
  }

  toResetPassFields() {
    pageType.value = ProfilePageType.PASSWORD;
  }

  toEditProfileFields() {
    Get.find<EditProfileController>().initTextControllers();
    pageType.value = ProfilePageType.PROFILE;
  }

  void changePage() {
    (pageType.value == ProfilePageType.PROFILE)
        ? toResetPassFields()
        : toEditProfileFields();
  }

  confirm() {
    switch (pageType.value) {
      case ProfilePageType.PROFILE:
        Get.find<EditProfileController>().updateProfile();
        break;

      case ProfilePageType.PASSWORD:
        Get.find<ResetPassController>().changePass();
        break;
    }
  }
}
