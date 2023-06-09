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
        Material(
          color: const Color(0xffEDEFF3),
          child: InkWell(
            onTap: () {
              _controller.navFreePackagesBtnClick();
            },
            child: ListTile(
              contentPadding: const EdgeInsets.only(right: 35),
              title: Text(
                StringResource.freePackages,
                style: const TextStyle().withIranSans(
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                    color: colorScheme.background),
              ),
            ),
          ),
        ),
        Material(
          color: const Color(0xffEDEFF3),
          child: InkWell(
            onTap: () {
              _controller.navEduPackagesBtnClick();
            },
            child: ListTile(
              contentPadding: const EdgeInsets.only(right: 35),
              title: Text(
                StringResource.educationalPackages,
                style: const TextStyle().withIranSans(
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                    color: colorScheme.background),
              ),
            ),
          ),
        ),
        Material(
          color: const Color(0xffEDEFF3),
          child: InkWell(
            onTap: () {},
            child: ListTile(
              contentPadding: const EdgeInsets.only(right: 35),
              title: Text(
                StringResource.discounts,
                style: const TextStyle().withIranSans(
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                    color: colorScheme.background),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
