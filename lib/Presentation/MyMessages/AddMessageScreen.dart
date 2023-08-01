import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/CommonWidgets/FormTextField.dart';
import 'package:lingo/Presentation/MyMessages/Controller/AddMessageScreenController.dart';

import '../CommonWidgets/ConfirmButton.dart';

class AddMessageScreen extends StatelessWidget {
  AddMessageScreen({super.key});

  final _controller = Get.find<AddMessageController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return BaseScreen(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Obx(() => Form(
            key: _controller.formKey,
            child: Column(
              children: [
                Text(
                  StringResource.addMessage,
                  style: const TextStyle().withIranSans(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.background,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7)),
                  child: FormTextField(
                    controller: _controller.titleController,
                    hintColor: const Color(0xffA4A4A4),
                    hintText: StringResource.title,
                    required: true,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7)),
                  child: FormTextField(
                    controller: _controller.bodyController,
                    maxLines: 4,
                    hintColor: const Color(0xffA4A4A4),
                    hintText: StringResource.messageHint,
                    required: true,
                  ),
                ),
                const SizedBox(height: 20,),
                ConfirmButton(
                    isLoading: _controller.isLoading.value,
                    buttonText: StringResource.confirm,
                    onConfirm: () {
                      _controller.addMessage();
                    })
              ],
            ),
          )),
        ),
      ),
    );
  }
}
