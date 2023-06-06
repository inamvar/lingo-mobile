import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Enums/MainPages.dart';
import 'package:lingo/Core/Dto/Enums/MessageType.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Helpers/ShowMessage.dart';
import 'package:lingo/Core/Interfaces/UseCases/Auth/ILogoutUseCase.dart';
import 'package:lingo/Presentation/Home/HomeScreen.dart';
import 'package:lingo/Presentation/Profile/ProfileScreen.dart';

import '../../../Core/Configs/StringResource.dart';

class MainScreenController extends GetxController {
  var currentIndex = 1.obs;

  final ILogoutUseCase iLogoutUseCase;

  MainScreenController({required this.iLogoutUseCase});

  final pages = [
    ProfileScreen(),
    HomeScreen(),
  ];

  changePage({MainPage? page,int? pageIndex}) {
    var index = (pageIndex != null) ? pageIndex : 1;
    if(page != null){
      switch(page){
        case MainPage.HOME :
          index = 1;
          break;
        case MainPage.PROFILE :
          index = 0;
          break;
        case MainPage.SEARCH:
          index = 2;
          break;
      }
    }

    currentIndex.value = index;
    update();
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
        BaseBrain.logout();
      });
    });
  }
}
