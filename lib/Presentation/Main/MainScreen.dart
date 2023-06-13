import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Helpers/ShowMessage.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/CustomButton.dart';
import 'package:lingo/Presentation/Main/Controller/MainScreenController.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import '../../Core/Configs/StringResource.dart';
import '../../infrastructure/Navigation/Routes.dart';
import 'Widgets/DrawerWidget.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final _controller = Get.find<MainScreenController>();

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _key,
      backgroundColor: const Color(0xffEDEFF3),
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          _key.currentState?.openDrawer();
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        icon: Icon(
                          FontAwesomeIcons.bars,
                          color: colorScheme.background,
                        )),
                    Image.asset(
                      "assets/images/lingo-logo.png",
                      height: 60,
                      width: 128,
                    ),
                  ],
                ),
                Expanded(
                  child: GetBuilder(
                    init: _controller,
                    builder: (controller) {
                      return IndexedStack(
                        index: controller.currentIndex.value,
                        children: controller.pages,
                      );
                    },
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Obx(() => CurvedNavigationBar(
                height: 60,
                letIndexChange: (index){
                  if(index == 0 && BaseBrain.authToken == null){
                    Get.toNamed(Routes.authentication);
                    return false;
                  }
                  return true;
                },
                backgroundColor: Colors.transparent,
                color: colorScheme.background,
                index: _controller.currentIndex.value,
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
                  _controller.changePage(pageIndex: index);
                  //Handle button tap
                },
              )),
            )
          ],
        ),
      ),
    );
  }
}
