import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Authentication/Controller/AuthenticationScreenController.dart';
import 'package:lingo/Presentation/Authentication/Widgets/LoginFields.dart';
import 'package:lingo/Presentation/Authentication/Widgets/RegisterFields.dart';

import '../../Core/Dto/Enums/AuthPageTypes.dart';
import 'Widgets/ResetPassFields.dart';

class AuthenticationScreen extends StatelessWidget {
  AuthenticationScreen({Key? key}) : super(key: key);

  final controller = Get.find<AuthenticationScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorScheme.background,
        leading: IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.house,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.white,
              ))
        ],
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: colorScheme.background,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 60),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 30),
                margin: const EdgeInsets.symmetric(horizontal: 17),
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Image.asset("assets/images/lingo-logo.png"),
                            buildFields(),
                          ],
                        ),
                      ),
                    ),
                    buildConfirmButton()
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 55,
                padding: const EdgeInsets.all(5),
                color: const Color(0xffBDCAE1),
                child: Center(
                  child: Text(
                    StringResource.policyInfo,
                    style: const TextStyle().withIranSans(
                        color: colorScheme.background, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  buildConfirmButton() {
    return Obx(() {
      var buttonText = StringResource.loginIntoAccount;
      switch (controller.pageType.value) {
        case AuthPageTypes.LOGIN:
          buttonText = StringResource.loginIntoAccount;
          break;
        case AuthPageTypes.REGISTER:
          buttonText = StringResource.register;
          break;
        case AuthPageTypes.RESET_PASSWORD:
          buttonText = StringResource.changePassword;
          break;
      }
      return Container(
        margin: const EdgeInsets.only(bottom: 56),
        width: double.infinity,
        height: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Material(
            borderRadius: BorderRadius.circular(4),
            color: const Color(0xffFC0706).withOpacity(0.75),
            child: InkWell(
              onTap: () {},
              child: Center(
                  child: Text(
                buttonText,
                style: const TextStyle().withIranSans(color: Colors.white),
              )),
            ),
          ),
        ),
      );
    });
  }

  Widget buildFields() {
    return Obx(() {
      switch (controller.pageType.value) {
        case AuthPageTypes.LOGIN:
          return LoginFields();
        case AuthPageTypes.REGISTER:
          return RegisterFields();
        case AuthPageTypes.RESET_PASSWORD:
          return ResetPassFields();
      }
    });
  }
}
