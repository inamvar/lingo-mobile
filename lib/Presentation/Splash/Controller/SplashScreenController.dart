import 'dart:async';

import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Setting.dart';
import 'package:lingo/Core/Helpers/BaseBrain.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/IGetSettingsUseCase.dart';
import 'package:lingo/Core/Utils/InjectionContainer.dart';
import 'package:lingo/infrastructure/Navigation/Routes.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Helpers/ShowMessage.dart';

class SplashScreenController extends GetxController {

  final IGetSettingsUseCase iGetSettingsUseCase;

  SplashScreenController(this.iGetSettingsUseCase);

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    startTimer();
    super.onReady();
  }

  void startTimer() {
    Timer(const Duration(seconds: 2), () => getSettings());
  }

  getSettings() {
    iGetSettingsUseCase.execute().then((result){
      result.fold((serverError) => ShowMessage.getSnackBar(
          message: serverError.errorMessage ??
              StringResource.serverErrorOccurred), (response) {
        BaseBrain.settings = response.data ?? [];
        Get.offAndToNamed(Routes.main);
      });
    });
  }
}
