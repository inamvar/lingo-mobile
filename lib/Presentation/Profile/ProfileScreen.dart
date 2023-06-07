import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Enums/ProfilePageType.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/Presentation/CommonWidgets/ConfirmButton.dart';
import 'package:lingo/Presentation/Profile/Controller/EditProfileController.dart';
import 'package:lingo/Presentation/Profile/Controller/ProfileScreenController.dart';
import 'package:lingo/Presentation/Profile/Controller/ResetPassController.dart';
import 'package:lingo/Presentation/Profile/Widgets/EditProfileFields.dart';
import 'package:lingo/Presentation/Profile/Widgets/ResetPassFields.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final controller = Get.find<ProfileScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(31),
        padding: const EdgeInsets.symmetric(vertical: 50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 8,
                    endIndent: 15,
                    indent: 15,
                    color: colorScheme.tertiary,
                  ),
                ),
                Obx(() => Text(
                      (controller.pageType.value == ProfilePageType.PROFILE)
                          ? StringResource.profileInfo
                          : StringResource.changePassword,
                      style: const TextStyle().withIranSans(
                          color: colorScheme.background,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    )),
                Expanded(
                  child: Divider(
                    thickness: 8,
                    endIndent: 15,
                    indent: 15,
                    color: colorScheme.tertiary,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Obx(() => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      buildFields(),
                      const SizedBox(
                        height: 60,
                      ),
                      ConfirmButton(
                          isLoading: controller.isLoading.value,
                          buttonText: (controller.pageType.value ==
                                  ProfilePageType.PROFILE)
                              ? StringResource.confirmChanges
                              : StringResource.changePass,
                          onConfirm: () {
                            controller.confirm();
                          },
                          bottomMargin: 20),
                      TextButton(
                          onPressed: () {
                            controller.changePage();
                          },
                          child: Text(
                            (controller.pageType.value ==
                                    ProfilePageType.PROFILE)
                                ? StringResource.iWantChangePass
                                : StringResource.back,
                            style: const TextStyle().withIranSans(
                                fontSize: 15,
                                color: colorScheme.primary,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  buildFields() {
    return Obx(() {
      switch (controller.pageType.value) {
        case ProfilePageType.PROFILE:
          return EditProfileFields();
        case ProfilePageType.PASSWORD:
          return ResetPassFields();
      }
    });
  }
}
