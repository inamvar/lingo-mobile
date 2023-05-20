import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Enums/FormTextFieldType.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

class FormTextField extends StatelessWidget {
  const FormTextField(
      {super.key,
      required this.labelText,
      this.hintColor,
      this.controller,
      this.formTextFieldType = FormTextFieldType.SIMPLE,
      this.fontSize = 13,
      this.required = false});

  final String labelText;
  final Color? hintColor;
  final TextEditingController? controller;
  final FormTextFieldType formTextFieldType;
  final double fontSize;
  final bool required;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: const TextStyle().withIranSans(color: const Color(0xff989292)),
      decoration: InputDecoration(
          label: Text(
        labelText,
        style: const TextStyle().withIranSans(
            fontSize: fontSize,
            color: hintColor ?? Theme.of(context).colorScheme.primary),
      )),
      validator: (text) {
        switch (formTextFieldType) {
          case FormTextFieldType.EMAIL:
            return validateEmail(text);
          case FormTextFieldType.SIMPLE:
            return ((text ?? "").isEmpty && required)
                ? StringResource.fieldRequiredError
                : null;
          case FormTextFieldType.PASSWORD:
            return (text ?? "").isEmpty
                ? StringResource.fieldRequiredError
                : null;
        }
      },
    );
  }

  String? validateEmail(String? text){

    if(required) {
      if(text != null && text.isNotEmpty){
        if(GetUtils.isEmail(text)){
          return null;
        }
        else{
          return StringResource.enterValidEmailError;
        }
      }
      else{
        return StringResource.fieldRequiredError;
      }
    }
    else if(!required){
      if(text != null && text.isNotEmpty){
        if(GetUtils.isEmail(text)){
          return null;
        }
        else{
          return StringResource.enterValidEmailError;
        }
      }
      else{
        return null;
      }
    }

    return null;
  }
}
