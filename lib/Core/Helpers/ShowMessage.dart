import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../Dto/Enums/MessageType.dart';

class ShowMessage{
  static getSnackBar({
    String? title,
    required String message,
    MessageType type = MessageType.WARNING,
    Color textColor = Colors.white,
    Color backgroundColor = Colors.black,
    SnackPosition? snackPosition = SnackPosition.BOTTOM,
  }) {
    late Color leftBarIndicatorColor;
    FaIcon? icon;
    switch (type) {
      case MessageType.WARNING:
        leftBarIndicatorColor = Colors.yellow;
        icon = const FaIcon(FontAwesomeIcons.triangleExclamation,color: Colors.yellow,);
        break;
      case MessageType.ERROR:
        icon = const FaIcon(FontAwesomeIcons.circleExclamation,color: Colors.red,);
        leftBarIndicatorColor = Colors.red;
        break;
      case MessageType.SUCCESS:
        leftBarIndicatorColor = Colors.green;
        break;
      case MessageType.INFO:
        leftBarIndicatorColor = Colors.blue;
        break;
      case MessageType.CONNECTION_ERROR:
        leftBarIndicatorColor = Colors.red;
        break;
    }

    Get.snackbar(
      title ?? "",
      message,
      titleText: Container(),
      borderRadius: 10,
      backgroundColor: Colors.grey.withOpacity(0.5),
      icon: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: icon,
      ),
      margin: const EdgeInsets.all(10),
      snackPosition: snackPosition,
      messageText: Text(message,style: const TextStyle().withIranSans(),),
      barBlur: 6,
      duration: const Duration(seconds: 3),
    );
  }
}