import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/FormTextFieldType.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Authentication/Controller/ChangePassScreenController.dart';

import '../../../Core/Configs/StringResource.dart';
import '../Controller/AuthenticationScreenController.dart';
import '../../CommonWidgets/FormTextField.dart';

class ChangePassFields extends StatelessWidget {
  ChangePassFields({Key? key}) : super(key: key);

  final controller = Get.find<ChangePassScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Form(
            key: controller.changePassFormKey,
            child: Wrap(
              runSpacing: 5,
              children: [
                FormTextField(
                  labelText: StringResource.confirmCode,
                  controller: controller.codeController,
                  required: true,
                ),
                Column(
                  children: [
                    const SizedBox(height: 10,),
                    Obx(() => (controller.resendCodeLoading.value)
                        ? SpinKitFadingCircle(
                            color: colorScheme.background,
                            size: 14,
                          )
                        : (controller.resendTimerValue.value == 0)
                            ? TextButton(
                                onPressed: () {
                                  controller.resetPassRequest();
                                },
                                child: Row(
                                  children: [
                                    const FaIcon(
                                      FontAwesomeIcons.arrowRotateLeft,
                                      size: 12,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      StringResource.resendCode,
                                      style: const TextStyle().withIranSans(
                                          color: colorScheme.background,
                                          fontSize: 12),
                                    ),
                                  ],
                                ))
                            : ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: LinearProgressIndicator(
                                  backgroundColor: const Color(0xffD9D9D9),
                                  color: const Color(0xff47CB78),
                                  value: controller.resendTimerValue.value,
                                  minHeight: 9,
                                ),
                              )),
                  ],
                ),
                FormTextField(
                  labelText: StringResource.password,
                  controller: controller.passController,
                  formTextFieldType: FormTextFieldType.PASSWORD,
                  required: true,
                ),
                FormTextField(
                  labelText: StringResource.repeatPassword,
                  controller: controller.repeatPassController,
                  formTextFieldType: FormTextFieldType.PASSWORD,
                  required: true,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 130,
          ),
        ],
      ),
    );
  }
}
