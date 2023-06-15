import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: const Color(0xffEDEFF3),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      FontAwesomeIcons.arrowRight,
                      color: colorScheme.background,
                    )),
                Image.asset(
                  "assets/images/lingo-logo.png",
                  height: 60,
                  width: 128,
                ),
              ],
            ),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
