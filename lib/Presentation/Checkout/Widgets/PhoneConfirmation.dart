import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../CommonWidgets/CustomButton.dart';
import '../Controller/CheckoutScreenController.dart';

class PhoneConfirmation extends StatelessWidget {
  PhoneConfirmation({
    super.key,
  });

  final CheckoutScreenController _controller =
      Get.find<CheckoutScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Text(
            StringResource.enterPhoneNumber,
            style: const TextStyle()
                .withIranSans(fontSize: 13, color: const Color(0xff525252)),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  child: SizedBox(
                height: 40,
                child: TextField(
                  controller: _controller.phoneController,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    filled: true,
                    fillColor: Color(0xffEDEFF3),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              )),
              const SizedBox(
                width: 20,
              ),
              Obx(() => (_controller.isRequestingConfirmCode.value)
                  ? SizedBox(
                width: 110,
                    child: SpinKitFadingCircle(
                        color: colorScheme.background,
                        size: 24,
                      ),
                  )
                  : CustomButton(
                      onClick: () {
                        _controller.requestConfirmPhone();
                      },
                      height: 40,
                      fontSize: 13,
                      width: 110,
                      text: StringResource.sendCode,
                      padding: EdgeInsets.all(5),
                    ))
            ],
          )
        ],
      ),
    );
  }
}
