import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Course.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Courses/Widgets/CourseItem.dart';
import 'package:lingo/Presentation/Home/Controller/HomeScreenController.dart';
import 'package:lingo/Presentation/Home/Widgets/BestSellWidget.dart';
import 'package:lingo/Presentation/Home/Widgets/TopPackages.dart';

import '../../Core/Configs/StringResource.dart';
import 'Widgets/SliderWidget.dart';
import 'Widgets/Specialtems.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Obx(() => SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 200),
            child: Column(
              children: [
                (_controller.isLoadingBanners.value)
                    ? SpinKitFadingCircle(
                        color: colorScheme.background,
                        size: 24,
                      )
                    : Column(
                        children: [
                          SliderWidget(),
                          const SizedBox(
                            height: 15,
                          ),
                          const SpecialItems(),
                          BestSellWidget(),
                          TopPackages()
                        ],
                      ),
              ],
            ),
          ),
        ));
  }
}
