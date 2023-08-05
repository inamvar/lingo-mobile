import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Enums/FormTextFieldType.dart';
import 'package:lingo/Core/Helpers/Tools.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Core/Utils/Extensions/StringExtensions.dart';

class FormTextField extends StatefulWidget {
  const FormTextField(
      {super.key,
      this.labelText,
      this.hintColor,
      this.controller,
      this.formTextFieldType = FormTextFieldType.SIMPLE,
      this.fontSize = 14,
      this.required = false,
      this.readOnly = false,
      this.autovalidateMode = AutovalidateMode.onUserInteraction,
      this.maxLines = 1,
      this.hintText});

  final String? labelText;
  final String? hintText;
  final Color? hintColor;
  final TextEditingController? controller;
  final FormTextFieldType formTextFieldType;
  final double fontSize;
  final bool required;
  final bool readOnly;
  final AutovalidateMode? autovalidateMode;
  final int? maxLines;

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  var passVisibility = true;

  @override
  void initState() {
    if (widget.formTextFieldType == FormTextFieldType.PASSWORD) {
      passVisibility = false;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: widget.readOnly,
      maxLines: widget.maxLines,
      controller: widget.controller,
      obscureText: (widget.formTextFieldType == FormTextFieldType.PASSWORD &&
              !passVisibility)
          ? true
          : false,
      autovalidateMode: widget.autovalidateMode,
      style: const TextStyle().withIranSans(color: const Color(0xff666262)),
      decoration: InputDecoration(
          alignLabelWithHint: true,
          suffixIcon: (widget.formTextFieldType == FormTextFieldType.PASSWORD)
              ? IconButton(
                  iconSize: 18,
                  onPressed: () {
                    setState(() {
                      passVisibility = !passVisibility;
                    });
                  },
                  icon: Icon(
                    passVisibility ? Icons.visibility_off : Icons.visibility,
                  ))
              : null,
          errorMaxLines: 2,
          hintText: widget.hintText,
          hintStyle: const TextStyle().withIranSans(
            color: widget.hintColor
          ),
          errorStyle: const TextStyle()
              .withIranSans(color: Colors.red.shade700, fontSize: 11),
          label: (widget.labelText != null)
              ? Text(
                  widget.labelText!,
                  style: const TextStyle().withIranSans(
                      fontSize: widget.fontSize,
                      color: widget.hintColor ??
                          Theme.of(context).colorScheme.primary),
                )
              : null),
      validator: (text) {
        switch (widget.formTextFieldType) {
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

  String? validateEmail(String? text) {
    var requiredCheck = validateRequiredField(text);
    if (requiredCheck != null) {
      return requiredCheck;
    } else {
      if (!widget.required && (text ?? "").isEmpty) return null;
      if (text!.isEmail) {
        return null;
      } else {
        return StringResource.enterValidEmailError;
      }
    }
  }

  String? validatePassword(String? text) {
    var requiredCheck = validateRequiredField(text);
    if (requiredCheck != null) {
      return requiredCheck;
    } else {
      if (!widget.required && (text ?? "").isEmpty) return null;

      if (text!.isValidPass) {
        return null;
      }
      return StringResource.passwordValidationError;
    }
  }

  String? validateRequiredField(String? text) {
    if (widget.required && (text ?? "").isEmpty) {
      return StringResource.fieldRequiredError;
    } else {
      return null;
    }
  }
}
