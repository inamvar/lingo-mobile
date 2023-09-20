import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../../../Core/Configs/StringResource.dart';
import '../Controller/CheckoutScreenController.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({
    super.key,
    required CheckoutScreenController controller,
  }) : _controller = controller;

  final CheckoutScreenController _controller;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                StringResource.paymentMethod,
                style: const TextStyle().withIranSans(
                    color: colorScheme.background,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ListView.builder(
            itemCount: _controller.course.pricings!.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var pricingItem =
              _controller.course.pricings![index];

              return Obx(() => InkWell(
                onTap: (){},
                child: RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(pricingItem.currencyType!,
                      style: const TextStyle().withIranSans(),),
                    value: pricingItem,
                    groupValue:
                    _controller.selectedPaymentMethod.value,
                    onChanged: (value) {
                      _controller.selectedPaymentMethod.value = value;
                    }),
              )
              );
            },
          )
        ],
      ),
    );
  }
}
