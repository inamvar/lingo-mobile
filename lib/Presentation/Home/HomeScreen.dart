import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/CustomButton.dart';
import 'package:lingo/Presentation/Home/Contoller/HomeScreenController.dart';
import 'package:lingo/Presentation/Home/Widgets/PackagesList.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeScreenController _controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.bars,
                  color: colorScheme.background,
                )),
            Image.asset(
              "assets/images/lingo-logo.png",
              height: 60,
              width: 128,
            ),
            CustomButton(
              padding: const EdgeInsets.all(5),
              text: StringResource.login,
              width: 79,
              height: 40,
              onClick: () {},
            )
          ],
        ),
        Expanded(
          child: SmartRefresher(
            physics: const BouncingScrollPhysics(),
            controller: _controller.refreshController,
            enablePullUp: true,
            enablePullDown: true,
            footer: const ClassicFooter(
              idleText: "",
              noDataText: "",
              loadingText: "",
              failedText: "",
            ),
            onRefresh: _controller.refreshPage,
            onLoading: _controller.loadNextPage,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    StringResource.packages,
                    style: const TextStyle().withIranSans(
                        fontSize: 18,
                        color: colorScheme.background,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Obx(() => (_controller.isLoading.value)
                    ? SpinKitFadingCircle(
                        size: 30,
                        color: colorScheme.background,
                      )
                    : PackagesList(packages: _controller.packages))
              ],
            ),
          ),
        )
      ],
    );
  }
}
