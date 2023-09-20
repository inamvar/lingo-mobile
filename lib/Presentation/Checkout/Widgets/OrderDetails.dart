import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CourseExtensions.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../../../Core/Configs/StringResource.dart';
import '../Controller/CheckoutScreenController.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    super.key,
    required this.colorScheme,
    required CheckoutScreenController controller,
  }) : _controller = controller;

  final ColorScheme colorScheme;
  final CheckoutScreenController _controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var selectedPrice = _controller.selectedPaymentMethod.value;
      var price = "";
      var finalPrice = "";
      if(selectedPrice != null){
        if(selectedPrice.currencyType == "IRR"){
          price = _controller.course.getPriceIRR();
          finalPrice = _controller.course.getFinalPriceIRR();
        }
        else if(selectedPrice.currencyType == "USDT"){
          price = _controller.course.getCryptoPrice();
          finalPrice = _controller.course.getCryptoFinalPrice();
        }
      }

      return Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(StringResource.orderDetails,
              style: const TextStyle().withIranSans(
                  fontSize: 12,
                  color: colorScheme.background,
                  fontWeight: FontWeight.bold
              ),),
            const Divider(),
            Row(
              children: [
                Text(StringResource.price,
                  style: const TextStyle().withIranSans(
                      fontSize: 12,
                      color: const Color(0xff525252),
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(width: 10,),
                Text(price,
                  style: const TextStyle().withIranSans(
                      fontSize: 12,
                      color: const Color(0xff525252),
                      fontWeight: FontWeight.bold
                  ),),
              ],
            ),
            const Divider(),
            Row(
              children: [
                Text(StringResource.discount,
                  style: const TextStyle().withIranSans(
                      fontSize: 12,
                      color: const Color(0xff525252),
                      fontWeight: FontWeight.bold
                  ),),
                const SizedBox(width: 10,),
                Text("%${_controller.course.discount!.discountValue!.toString()}",
                  style: const TextStyle().withIranSans(
                      fontSize: 12,
                      color: const Color(0xff525252),
                      fontWeight: FontWeight.bold
                  ),),
              ],
            ),
            const Divider(),
            Row(
              children: [
                Text(StringResource.finalPrice,
                  style: const TextStyle().withIranSans(
                      fontSize: 12,
                      color: const Color(0xff525252),
                      fontWeight: FontWeight.bold
                  ),),
                const SizedBox(width: 10,),
                Text(finalPrice,
                  style: const TextStyle().withIranSans(
                      fontSize: 12,
                      color: const Color(0xff525252),
                      fontWeight: FontWeight.bold
                  ),),
              ],
            ),
          ],
        ),
      );
    });
  }
}