import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/CommonWidgets/DescriptionWidget.dart';
import 'package:lingo/Presentation/CourseDisplay/Widgets/VideoPlayerWidget.dart';
import 'package:lingo/Presentation/GoldenPackage/Controller/GoldenPackageController.dart';

import '../CommonWidgets/ConfirmButton.dart';

class GoldenPackageScreen extends StatelessWidget {
  GoldenPackageScreen({super.key});

  final _controller = Get.find<GoldenPackageController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return BaseScreen(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Obx(() => (_controller.isLoading.value)
            ? Center(
                child: SpinKitFadingCircle(
                  size: 24,
                  color: colorScheme.background,
                ),
              )
            : Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 200),
                child: Column(
                  children: [
                    VideoPlayerWidget(controller: Get.find(tag: _controller.video.id!.toString()),),
                    Row(
                      children: [
                        Text(
                          StringResource.goldPackageScreenTitle,
                          style: TextStyle().withIranSans(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    DescriptionWidget(
                        content: _controller.package.value.description!),
                    const SizedBox(height: 20,),
                    ConfirmButton(
                        bottomMargin: 0,
                        buttonText: StringResource.goldPackageBuyBtnTxt,
                        onConfirm: () {
                          _controller.checkout();
                        })
                  ],
                ),
              )),
      ),
    );
  }
}
