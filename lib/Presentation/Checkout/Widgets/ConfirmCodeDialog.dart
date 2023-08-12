import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/ConfirmButton.dart';

import '../Controller/CheckoutScreenController.dart';

class ConfirmCodeDialog extends StatelessWidget {
  ConfirmCodeDialog({super.key});

  final CheckoutScreenController _controller =
      Get.find<CheckoutScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: SizedBox(
                height: 40,
                child: TextField(
                  controller: _controller.confirmCodeController,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    hintText: StringResource.confirmCode,
                    hintStyle: const TextStyle().withIranSans(
                        color: Colors.grey.shade700, fontSize: 14),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    filled: true,
                    fillColor: const Color(0xffEDEFF3),
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Obx(() => (_controller.isRequestingConfirmCode.value)
                ? SpinKitFadingCircle(
                    color: colorScheme.background,
                    size: 14,
                  )
                : (_controller.resendTimerValue.value == 0)
                    ? TextButton(
                        onPressed: () {
                          _controller.requestConfirmPhone(isResend: true);
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
                                  color: colorScheme.background, fontSize: 12),
                            ),
                          ],
                        ))
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: LinearProgressIndicator(
                          backgroundColor: const Color(0xffD9D9D9),
                          color: const Color(0xff47CB78),
                          value: _controller.resendTimerValue.value,
                          minHeight: 9,
                        ),
                      )),
            const SizedBox(
              height: 30,
            ),
            Obx(() => ConfirmButton(
                bottomMargin: 0,
                isLoading: _controller.isConfirmingCode.value,
                buttonText: StringResource.confirm,
                onConfirm: () {
                  _controller.confirmCode();
                }))

          ],
        ),
      ),
    );
  }
}
