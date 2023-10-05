import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Core/Utils/Extensions/StringExtensions.dart';
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
        InkWell(
          onTap: () {
            _controller.navMyCourses();
          },
          child: ListTile(
            contentPadding: const EdgeInsets.only(right: 20),
            leading: Image.asset("assets/images/package_ic.png",width: 25,height: 25,),
            horizontalTitleGap: 0,
            title: Text(
              StringResource.myCourses,
              style: const TextStyle().withIranSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            _controller.navMyTransactions();
          },
          child: ListTile(
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.only(right: 20),
            leading: Image.asset("assets/images/transaction_ic.png",width: 25,height: 25,),
            title: Text(
              StringResource.myTransaction,
              style: const TextStyle().withIranSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            _controller.navMyMessages();
          },
          child: ListTile(
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.only(right: 20),
            leading: Image.asset("assets/images/message_ic.png",width: 25,height: 25,),
            title: Text(
              StringResource.myMessages,
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
            leading: Image.asset("assets/images/free_packages_ic.png",width: 25,height: 25,),
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
            leading: Image.asset("assets/images/discount_ic.png",width: 25,height: 20,),
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
        InkWell(
          onTap: () {
            "https://lingo4030.com/contactus".openAsUrl();
          },
          child: ListTile(
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.only(right: 20),
            leading: Image.asset("assets/images/message_ic.png",width: 25,height: 25,),
            title: Text(
              StringResource.contactUs,
              style: const TextStyle().withIranSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Get.defaultDialog(
                content: Text(StringResource.logoutDialogMessage,
                    style: const TextStyle().withIranSans()),
                title: StringResource.logoutDialogTitle,
                titleStyle: const TextStyle().withIranSans(fontSize: 16),
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
            horizontalTitleGap: 0,
            contentPadding: const EdgeInsets.only(right: 20),
            leading: Image.asset("assets/images/logout_ic.png",width: 25,height: 25,),
            title: Text(
              StringResource.logout,
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
