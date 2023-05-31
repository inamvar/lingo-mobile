import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Helpers/ShowMessage.dart';
import 'package:lingo/Presentation/CommonWidgets/CustomButton.dart';
import 'package:lingo/Presentation/Main/Controller/MainScreenController.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../../Core/Configs/StringResource.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final _controller = Get.find<MainScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: const Color(0xffEDEFF3),
      body: SafeArea(
        child: Stack(
          children: [
            GetBuilder(
              init: _controller,
              builder: (controller) {
                return IndexedStack(
                  index: controller.currentIndex.value,
                  children: controller.pages,
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CurvedNavigationBar(
                height: 60,
                backgroundColor: Colors.transparent,
                color: colorScheme.background,
                index: 1,
                animationDuration: const Duration(milliseconds: 250),
                items: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.solidUser,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.house,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.magnifyingGlass,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
                onTap: (index) {
                  _controller.changePage(index);
                  //Handle button tap
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
