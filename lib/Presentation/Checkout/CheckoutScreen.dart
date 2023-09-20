import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CourseExtensions.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Checkout/Controller/CheckoutScreenController.dart';
import 'package:lingo/Presentation/Checkout/Widgets/PaymentMethod.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/CommonWidgets/ConfirmButton.dart';
import 'package:lingo/Presentation/CommonWidgets/CustomButton.dart';
import 'package:lingo/Presentation/CommonWidgets/FormTextField.dart';
import 'package:lingo/Presentation/CommonWidgets/RoundedNetworkImage.dart';

import 'Widgets/Header.dart';
import 'Widgets/OrderDetails.dart';
import 'Widgets/PhoneConfirmation.dart';

class CheckoutScreen extends StatelessWidget {
  CheckoutScreen({super.key});

  final CheckoutScreenController _controller =
      Get.find<CheckoutScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return BaseScreen(
      child: Obx(() => (_controller.isCheckingPhone.value)
          ? SpinKitFadingCircle(
              color: colorScheme.background,
              size: 24,
            )
          : SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Wrap(
                  runSpacing: 15,
                  children: [
                    Header(controller: _controller),
                    if (!_controller.isPhoneConfirmed.value)
                      PhoneConfirmation(),
                    OrderDetails(
                        colorScheme: colorScheme, controller: _controller),
                    PaymentMethod(controller: _controller),
                    Obx(() => ConfirmButton(
                        buttonText: StringResource.payButtonTxt,
                        isLoading: _controller.isCreatingOrder.value,
                        onConfirm: () {
                          _controller.createOrder();
                        }))
                  ],
                ),
              ),
            )),
    );
  }
}
