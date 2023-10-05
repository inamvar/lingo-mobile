import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lingo/Core/Dto/Enums/MainPages.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Core/Utils/Extensions/StringExtensions.dart';
import 'package:lingo/Presentation/Main/Controller/MainScreenController.dart';
import 'package:lingo/Presentation/Main/Widgets/AfterLoginDrawerItems.dart';
import 'package:lingo/Presentation/Main/Widgets/BeforeLoginDrawerItems.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Dto/Models/Setting.dart';
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
      return Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: colorScheme.background.withOpacity(0.8)),
        child: SafeArea(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
            child: Drawer(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 60),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 120,
                            height: 120,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              (BaseBrain.isLogin.value)
                                  ? "${BaseBrain.user.value.firstName!} ${BaseBrain.user.value.lastName!}"
                                  : StringResource.guestUser,
                              style: const TextStyle().withIranSans(
                                  fontSize: 16,
                                  color: colorScheme.background,
                                  fontWeight: FontWeight.w300),
                            )),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextButton(
                              onPressed: () {
                                if (!BaseBrain.isLogin.value) {
                                  Get.back();
                                  Get.toNamed(Routes.authentication);
                                } else {
                                  _mainScreenController.navProfileButtonClick();
                                }
                              },
                              child: Text(
                                (BaseBrain.isLogin.value)
                                    ? StringResource.seeProfile
                                    : StringResource.loginIntoAccount,
                                style: const TextStyle().withIranSans(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                    color: Colors.white),
                              )),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            thickness: 1,
                            endIndent: 20,
                            indent: 20,
                            color: Colors.white,
                          ),
                          (BaseBrain.isLogin.value)
                              ? AfterLoginDrawerItems()
                              : BeforeLoginDrawerItems(),
                          const Divider(
                            thickness: 1,
                            endIndent: 20,
                            indent: 20,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 10),
                          Column(
                            children: [
                              Text(
                                StringResource.contactInfo,
                                style: const TextStyle()
                                    .withIranSans(color: Colors.white,
                                fontSize: 16),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        openItem("TwitterAddress");
                                      },
                                      icon: Image.asset(
                                          width: 20,
                                          height: 20,
                                          "assets/images/twitter_ic.png")),
                                  IconButton(
                                      onPressed: () {
                                        openItem("WhatsappNumber");
                                      },
                                      icon: Image.asset(
                                          width: 20,
                                          height: 20,
                                          "assets/images/whatsapp_ic.png")),
                                  IconButton(
                                      onPressed: () {
                                        openItem("TelegramChannelAddress");
                                      },
                                      icon: Image.asset(
                                          width: 20,
                                          height: 20,
                                          "assets/images/tel_ic.png")),
                                  IconButton(
                                      onPressed: () {
                                        openItem("InstagramAddress");
                                      },
                                      icon: Image.asset(
                                          width: 20,
                                          height: 20,
                                          "assets/images/insta_ic.png")),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              InkWell(
                                onTap: (){
                                  "mailto:info@lingo4030.com".openAsUrl();
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Info@lingo4030.com",
                                      style: const TextStyle()
                                          .withIranSans(color: Colors.white),
                                    ),
                                    const SizedBox(width: 10,),
                                    Image.asset(width: 20,height: 20,"assets/images/message_ic.png"),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
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
            ),
          ),
        ),
      );
    });
  }

  void openItem(String key) {
    var settings = BaseBrain.settings;
    int itemIndex = settings.indexWhere((item) => item.key == key);
    if(itemIndex != -1){
      var settingItem = settings[itemIndex];
      settingItem.value?.openAsUrl();
    }
  }
}
