import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/MainPages.dart';
import 'package:lingo/Core/Dto/Enums/MessageType.dart';
import 'package:lingo/Core/Dto/Enums/ProfilePageType.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Helpers/ShowMessage.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/ILogoutUseCase.dart';
import 'package:lingo/Presentation/Home/HomeScreen.dart';
import 'package:lingo/Presentation/Profile/Controller/EditProfileController.dart';
import 'package:lingo/Presentation/Profile/Controller/ProfileScreenController.dart';
import 'package:lingo/Presentation/Profile/ProfileScreen.dart';
import 'package:lingo/Presentation/Search/SearchScreen.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../infrastructure/Navigation/Routes.dart';

class MainScreenController extends GetxController {
  var currentIndex = 1.obs;

  final ILogoutUseCase iLogoutUseCase;

  MainScreenController({required this.iLogoutUseCase});

  final pages = [
    ProfileScreen(),
    HomeScreen(),
    SearchScreen(),
  ];

  changePage({MainPage? page, int? pageIndex}) {
    var index = (pageIndex != null) ? pageIndex : 1;
    if (page != null) {
      switch (page) {
        case MainPage.HOME:
          index = 1;
          break;
        case MainPage.PROFILE:
          index = 0;
          break;
        case MainPage.SEARCH:
          index = 2;
          break;
      }
    }

    if(index == 0){//load profile
      Get.find<ProfileScreenController>().toEditProfileFields();
    }

    currentIndex.value = index;
    update();
    FocusManager.instance.primaryFocus?.unfocus();
  }

  Future<dynamic> logout() async {
    return iLogoutUseCase.execute().then((value) {
      value.fold(
          (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred,
              type: MessageType.ERROR), (r) {
        ShowMessage.getSnackBar(
            message: StringResource.logoutSuccessMessage,
            type: MessageType.SUCCESS);
        changePage(page: MainPage.HOME);
        BaseBrain.logout();
      });
    });
  }

  navHomeButtonClick(){
    Get.back();
    Get.until((route) => route.settings.name == Routes.main);
    changePage(page: MainPage.HOME);
  }

  navProfileButtonClick(){
    Get.back();
    Get.until((route) => route.settings.name == Routes.main);
    changePage(page: MainPage.PROFILE);
  }

  navFreePackagesBtnClick(){
    Get.back();
    Get.toNamed(Routes.freePackages);
  }

  navMyCourses(){
    Get.back();
    Get.toNamed(Routes.purchasedCourses);
  }

  navMyTransactions(){
    Get.back();
    Get.toNamed(Routes.orderHistory);
  }

  navEduPackagesBtnClick(){
    Get.back();
    Get.toNamed(Routes.eduPackages);
  }

  void navMyMessages() {
    Get.back();
    Get.toNamed(Routes.messages);
  }
}
