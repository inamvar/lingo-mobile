import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Enums/FormTextFieldType.dart';
import 'package:lingo/Core/Helpers/Tools.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Core/Utils/Extensions/StringExtensions.dart';

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
      obscureText: (formTextFieldType == FormTextFieldType.PASSWORD) ? true : false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: const TextStyle().withIranSans(color: const Color(0xff666262)),
      decoration: InputDecoration(
        errorMaxLines: 2,
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
            return validateRequiredField(text);
          case FormTextFieldType.PASSWORD:
            return validatePassword(text);
        }
      },
    );
  }

  String? validateEmail(String? text){
    var requiredCheck = validateRequiredField(text);
    if(requiredCheck != null){
      return requiredCheck;
    }
    else{
      if(!required && (text ?? "").isEmpty) return null;
      if(text!.isEmail){
        return null;
      }
      else{
        return StringResource.enterValidEmailError;
      }
    }
  }

  String? validatePassword(String? text){
    var requiredCheck = validateRequiredField(text);
    if(requiredCheck != null){
      return requiredCheck;
    }
    else{
      if(!required && (text ?? "").isEmpty) return null;

      if(text!.isValidPass){
        return null;
      }
      return StringResource.passwordValidationError;
    }
  }

  String? validateRequiredField(String? text){
    if(required && (text ?? "").isEmpty){
      return StringResource.fieldRequiredError;
    }
    else{
      return null;
    }
  }
}
