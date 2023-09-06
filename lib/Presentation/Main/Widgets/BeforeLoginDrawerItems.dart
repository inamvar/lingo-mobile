import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Main/Controller/MainScreenController.dart';
import 'package:lingo/infrastructure/Navigation/Routes.dart';

import '../../../Core/Configs/StringResource.dart';

class BeforeLoginDrawerItems extends StatelessWidget {
  BeforeLoginDrawerItems({Key? key}) : super(key: key);

  final _controller = Get.find<MainScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        InkWell(
          onTap: () {
            _controller.navEduPackagesBtnClick();
          },
          child: ListTile(
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.only(right: 20),
            leading: Image.asset("assets/images/education_packages_ic.png",width: 25,height: 25,),
            title: Text(
              StringResource.educationalPackages,
              style: const TextStyle().withIranSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            _controller.navGoldenPackages();
          },
          child: ListTile(
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.only(right: 20),
            leading: Image.asset("assets/images/gift_ic.png",color: Colors.white,width: 25,height: 25,),
            title: Text(
              StringResource.goldPackages,
              style: const TextStyle().withIranSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            _controller.navFreePackagesBtnClick();
          },
          child: ListTile(
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.only(right: 20),
            leading: Image.asset("assets/images/free_packages_ic.png",
              width: 25,height: 25,),
            title: Text(
              StringResource.freePackages,
              style: const TextStyle().withIranSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
        const Divider(
          thickness: 1,
          endIndent: 20,
          indent: 20,
          color: Colors.white,
        ),
        InkWell(
          onTap: () {
            _controller.navOffers();
          },
          child: ListTile(
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.only(right: 20),
            leading: Image.asset("assets/images/discount_ic.png",width: 23,height: 23,),
            title: Text(
              StringResource.discounts,
              style: const TextStyle().withIranSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            _controller.navFaq();
          },
          child: ListTile(
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.only(right: 20),
            leading: Image.asset("assets/images/faq_ic.png",width: 25,height: 25,),
            title: Text(
              StringResource.faq,
              style: const TextStyle().withIranSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            _controller.navPrivacy();
          },
          child: ListTile(
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.only(right: 20),
            leading: Image.asset("assets/images/privacy_ic.png",width: 25,height: 25,),
            title: Text(
              StringResource.privacyAndPolicy,
              style: const TextStyle().withIranSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
