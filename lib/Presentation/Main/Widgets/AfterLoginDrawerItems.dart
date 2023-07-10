import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Main/Controller/MainScreenController.dart';

import '../../../Core/Configs/StringResource.dart';

class AfterLoginDrawerItems extends StatelessWidget {
  AfterLoginDrawerItems({Key? key}) : super(key: key);

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
              _controller.navMyCourses();
            },
            child: ListTile(
              contentPadding: const EdgeInsets.only(right: 35),
              title: Text(
                StringResource.myCourses,
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
                StringResource.myTransaction,
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
        Material(
          color: const Color(0xffEDEFF3),
          child: InkWell(
            onTap: () {
              Get.defaultDialog(
                  content: Text(StringResource.logoutDialogMessage,
                      style: const TextStyle().withIranSans()),
                  title: StringResource.logoutDialogTitle,
                  titleStyle: const TextStyle().withIranSans(fontSize: 15),
                  cancel: TextButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Text(
                        StringResource.cancel,
                        style: const TextStyle().withIranSans(),
                      )),
                  confirm: TextButton(
                      onPressed: () {
                        Get.back();
                        Get.showOverlay(
                          opacity: 0.6,
                            asyncFunction: _controller.logout,
                            loadingWidget: Container(
                              width: double.infinity,
                                height: double.infinity,
                                alignment: Alignment.center,
                                child: const SpinKitCircle(
                                  size: 24,
                                  color: Colors.red,
                                )));
                      },
                      child: Text(
                        StringResource.confirm,
                        style:
                            const TextStyle().withIranSans(color: Colors.red),
                      )));
            },
            child: ListTile(
              contentPadding: const EdgeInsets.only(right: 35),
              title: Text(
                StringResource.logout,
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
