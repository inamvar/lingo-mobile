import 'package:flutter/material.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton(
      {Key? key,
      required this.buttonText,
      required this.onConfirm,
      this.bottomMargin = 56})
      : super(key: key);

  final String buttonText;
  final Function onConfirm;
  final double bottomMargin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: bottomMargin),
      width: double.infinity,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Material(
          borderRadius: BorderRadius.circular(4),
          color: const Color(0xffFC0706).withOpacity(0.75),
          child: InkWell(
            onTap: () {
              onConfirm();
            },
            child: Center(
                child: Text(
              buttonText,
              style: const TextStyle().withIranSans(color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
