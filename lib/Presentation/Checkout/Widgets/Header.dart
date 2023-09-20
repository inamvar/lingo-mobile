import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CourseExtensions.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Checkout/Controller/CheckoutScreenController.dart';
import 'package:lingo/Presentation/CommonWidgets/RoundedNetworkImage.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required CheckoutScreenController controller,
  }) : _controller = controller;

  final CheckoutScreenController _controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var selectedPrice = _controller.selectedPaymentMethod.value;
      var price = "";
      if(selectedPrice != null){
        if(selectedPrice.currencyType == "IRR"){
          price = _controller.course.getPriceIRR();
        }
        else if(selectedPrice.currencyType == "USDT"){
          price = _controller.course.getCryptoPrice();
        }
      }

      return Container(
        width: double.infinity,
        height: 151,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          children: [
            RoundedNetworkImage(
              width: 124,
              height: 124,
              imageUrl: _controller.course.thumbnailImageUrl!,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _controller.course.title ?? "",
                    style: const TextStyle().withIranSans(
                      color: const Color(0xff525252),
                      fontSize: 14,),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15,),
                  Text(price,
                      textAlign: TextAlign.center,
                      style: const TextStyle().withIranSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: const Color(0xff47CB78)))
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
