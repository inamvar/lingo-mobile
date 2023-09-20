import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lingo/Core/Dto/Enums/MessageType.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Core/Dto/Models/Pricing.dart';
import 'package:lingo/Core/Dto/UseCases/Requests/General/CreateOrderRequestDtoUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/General/ICreateOrderUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/ICheckPhoneStatusUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IConfirmPhoneUseCase.dart';
import 'package:lingo/Core/Interfaces/UseCases/User/IRequestPhoneConfirmUseCase.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Core/Utils/Extensions/StringExtensions.dart';
import 'package:lingo/Presentation/Checkout/Widgets/ConfirmCodeDialog.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Helpers/ShowMessage.dart';

class CheckoutScreenController extends GetxController {
  late Course course;

  var isCheckingPhone = false.obs;
  var isPhoneConfirmed = false.obs;

  final ICheckPhoneStatusUseCase iCheckPhoneStatus;
  final IRequestPhoneConfirmUseCase iRequestPhoneConfirmUseCase;
  final IConfirmPhoneUseCase iConfirmPhoneUseCase;
  final ICreateOrderUseCase iCreateOrderUseCase;

  CheckoutScreenController(
      this.iCheckPhoneStatus,
      this.iRequestPhoneConfirmUseCase,
      this.iConfirmPhoneUseCase,
      this.iCreateOrderUseCase);

  var isRequestingConfirmCode = false.obs;
  var isConfirmingCode = false.obs;

  TextEditingController? phoneController;
  TextEditingController? confirmCodeController;

  String? expireTime;
  var resendTimerValue = 1.0.obs;

  var isCreatingOrder = false.obs;

  Rx<Pricing?> selectedPaymentMethod = Rx(null);

  @override
  void onInit() {
    phoneController = TextEditingController();
    confirmCodeController = TextEditingController();
    course = Get.arguments["course"];
    List<Pricing>? filteredPrices = course.pricings?.toList();
    filteredPrices?.removeWhere((element) => element.currencyType == "USD");
    course = course.copyWith(
      pricings: filteredPrices
    );
    selectedPaymentMethod.value = filteredPrices?[0];
    super.onInit();
  }

  @override
  void onReady() {
    checkPhoneStatus();
    super.onReady();
  }

  checkPhoneStatus() {
    isCheckingPhone.value = true;

    iCheckPhoneStatus.execute().then((value) {
      isCheckingPhone.value = false;

      value.fold(
          (serverError) => ShowMessage.getSnackBar(
              message: serverError.errorMessage ??
                  StringResource.serverErrorOccurred), (response) {
        isPhoneConfirmed.value = response.data!.phoneNumberConfirmed!;
      });
    });
  }

  requestConfirmPhone({bool isResend = false}) {
    var phone = phoneController!.text;
    if (phone.isNotEmpty) {
      isRequestingConfirmCode.value = true;

      iRequestPhoneConfirmUseCase.execute(params: phone).then((result) {
        isRequestingConfirmCode.value = false;

        result.fold(
            (serverError) => ShowMessage.getSnackBar(
                message: serverError.errorMessage ??
                    StringResource.serverErrorOccurred,
                type: MessageType.ERROR), (response) {
          ShowMessage.getSnackBar(
              message: response.message ?? StringResource.confirmCodeSent,
              type: MessageType.SUCCESS);

          expireTime = response.data!.data!["securityCodeExpiresAt"];
          resendTimerValue.value = 1.0;
          initExpireTime();

          if (!isResend) {
            Get.defaultDialog(
                title: StringResource.enterSecurityCode,
                titleStyle: const TextStyle().withIranSans(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff525252)),
                radius: 10,
                content: ConfirmCodeDialog());
          }
        });
      });
    } else {
      ShowMessage.getSnackBar(
          message: StringResource.enterPhoneNumber, type: MessageType.WARNING);
    }
  }

  confirmCode() {
    var code = confirmCodeController!.text;
    if (code.isNotEmpty) {
      isConfirmingCode.value = true;
      iConfirmPhoneUseCase.execute(params: code).then((result) {
        isConfirmingCode.value = false;
        result.fold(
            (serverError) => ShowMessage.getSnackBar(
                message: serverError.errorMessage ??
                    StringResource.serverErrorOccurred,
                type: MessageType.ERROR), (response) {
          ShowMessage.getSnackBar(
              message: response.message ?? StringResource.phoneConfirmedMessage,
              type: MessageType.SUCCESS);
          isPhoneConfirmed.value = true;
        });
      });
    } else {
      ShowMessage.getSnackBar(
          message: StringResource.codeEmptyWarning, type: MessageType.WARNING);
    }
  }

  initExpireTime() {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss");
    DateTime expireDate = dateFormat.parse(expireTime!);
    DateTime currentTime = DateTime.now();
    Duration wholeTime = expireDate.difference(currentTime);
    Duration remainingTime = wholeTime;

    if (currentTime.isBefore(expireDate)) {
      Timer.periodic(
        const Duration(seconds: 1),
        (Timer timer) {
          remainingTime -= const Duration(seconds: 1);
          resendTimerValue.value =
              remainingTime.inSeconds / wholeTime.inSeconds;
          if (remainingTime.inSeconds <= 0) {
            timer.cancel();
          } else {}
        },
      );
    }
  }

  void createOrder() {
    if (isPhoneConfirmed.value) {
      isCreatingOrder.value = true;
      iCreateOrderUseCase.execute(params: CreateOrderRequestDtoUseCase(
        courseId: course.id.toString(),
        currencyType: (selectedPaymentMethod.value!.currencyType == "IRR") ? 1 : 2
      )).then((result) {
        isCreatingOrder.value = false;

        result.fold(
            (serverError) => ShowMessage.getSnackBar(
                message: serverError.errorMessage ??
                    StringResource.serverErrorOccurred,
                type: MessageType.ERROR), (response) {
          response.data!.paymentUrlDetails!.paymentUrl!.openAsUrl();
        });
      });
    } else {
      ShowMessage.getSnackBar(
          message: StringResource.confirmPhoneFirst, type: MessageType.WARNING);
    }
  }
}
