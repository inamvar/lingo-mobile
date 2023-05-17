import 'package:flutter/material.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Presentation/Authentication/Widgets/BaseAuthScreen.dart';
import 'package:lingo/Presentation/Authentication/Widgets/ChangePassFields.dart';
import 'package:lingo/Presentation/Authentication/Widgets/ConfirmButton.dart';

class ChangePassScreen extends StatelessWidget {
  const ChangePassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseAuthScreen(
        fields: ChangePassFields(),
        confirmButton: ConfirmButton(bottomMargin: 40,
            buttonText: StringResource.changePassword, onConfirm: onConfirm));
  }

  onConfirm() {}
}
