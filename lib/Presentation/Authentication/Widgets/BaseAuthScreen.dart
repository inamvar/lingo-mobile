import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/MainPages.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Authentication/Widgets/ConfirmButton.dart';
import 'package:lingo/Presentation/Main/Controller/MainScreenController.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../infrastructure/Navigation/Routes.dart';

class BaseAuthScreen extends StatelessWidget {
  BaseAuthScreen(
      {Key? key, required this.fields, required this.confirmButton})
      : super(key: key);

  final Widget fields;
  final Widget confirmButton;

  final _controller = Get.find<MainScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorScheme.background,
        leading: IconButton(
            onPressed: () {
              Get.until((route) => route.settings.name == Routes.main);
              _controller.changePage(page:MainPage.HOME);
            },
            icon: const FaIcon(
              FontAwesomeIcons.house,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.white,
              ))
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
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
                            fields,
                          ],
                        ),
                      ),
                    ),
                    confirmButton
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
}
