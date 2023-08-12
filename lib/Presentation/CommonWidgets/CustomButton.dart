import 'package:flutter/material.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.margin,
      this.padding,
      this.width,
      this.height,
      this.onClick,
      required this.text,
      this.color, this.fontSize})
      : super(key: key);

  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final double? width;
  final double? height;
  final void Function()? onClick;
  final String text;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Container(
      margin: margin,
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Material(
          borderRadius: BorderRadius.circular(4),
          color: color ?? colorScheme.background,
          child: InkWell(
            onTap: onClick,
            child: Padding(
              padding: padding ?? EdgeInsets.zero,
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle().withIranSans(
                      fontSize: fontSize ?? 14, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
