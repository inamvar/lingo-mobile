import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lingo/Core/Dto/Enums/MainPages.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Main/Controller/MainScreenController.dart';
import 'package:lingo/Presentation/Main/Widgets/AfterLoginDrawerItems.dart';
import 'package:lingo/Presentation/Main/Widgets/BeforeLoginDrawerItems.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Helpers/BaseBrain.dart';
import '../../../infrastructure/Navigation/Routes.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({
    super.key,
  });

  final MainScreenController _mainScreenController =
      Get.find<MainScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Obx(() {
      return Container(
        color: const Color(0xffEDEFF3),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colorScheme.background,
                      ),
                      child: Center(
                          child: Text(
                        (BaseBrain.isLogin.value)
                            ? "${BaseBrain.user.value.firstName!} ${BaseBrain.user.value.lastName!}"
                            : StringResource.guestUser,
                        style: const TextStyle().withIranSans(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      )),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextButton(
                        onPressed: () {
                          if(!BaseBrain.isLogin.value){
                            Get.back();
                            Get.toNamed(Routes.authentication);
                          }
                          else{
                            _mainScreenController.navProfileButtonClick();
                          }
                        },
                        child: Text(
                          (BaseBrain.isLogin.value)
                              ? StringResource.seeProfile
                              : StringResource.loginIntoAccount,
                          style: const TextStyle().withIranSans(
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                              color: colorScheme.background),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      indent: 35,
                      endIndent: 35,
                      thickness: 1.5,
                    ),
                    Material(
                      color: const Color(0xffEDEFF3),
                      child: InkWell(
                        onTap: () {
                          _mainScreenController.navHomeButtonClick();
                        },
                        child: ListTile(
                          contentPadding: const EdgeInsets.only(right: 35),
                          title: Text(
                            StringResource.home,
                            style: const TextStyle().withIranSans(
                                fontWeight: FontWeight.w300,
                                fontSize: 17,
                                color: colorScheme.background),
                          ),
                        ),
                      ),
                    ),
                    (BaseBrain.isLogin.value)
                        ? AfterLoginDrawerItems()
                        : const BeforeLoginDrawerItems()
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                color: colorScheme.background,
                height: 60,
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const FaIcon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
