import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../../../Core/Configs/StringResource.dart';
import '../../../Core/Dto/Models/Course.dart';
import '../../../infrastructure/Navigation/Routes.dart';
import '../../Courses/Widgets/CourseItem.dart';
import '../Controller/HomeScreenController.dart';

class BestSellWidget extends StatelessWidget {
  BestSellWidget({super.key});

  final _controller = Get.find<HomeScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Obx(() => Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            (_controller.isLoadingBestSells.value)
                ? SizedBox(
                    width: double.infinity,
                    height: 180,
                    child: Center(
                        child: SpinKitFadingCircle(
                      color: colorScheme.background,
                      size: 24,
                    )))
                : (_controller.bestSellPackages.isNotEmpty)
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  StringResource.bestSellPackages,
                                  style: const TextStyle().withIranSans(
                                      fontSize: 16,
                                      color: colorScheme.background),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Get.toNamed(Routes.searchByTag,
                                          arguments: {
                                            "filter": "پکیج های پرفروش"
                                          });
                                    },
                                    child: Text(
                                      StringResource.seeMore,
                                      style: TextStyle().withIranSans(
                                          color: colorScheme.background,
                                          fontSize: 14),
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SizedBox(
                              height: 180,
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: _controller.bestSellPackages.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  var item =
                                      _controller.bestSellPackages[index];
                                  var course = Course(
                                      thumbnailImageUrl: item.thumbnailUrl,
                                      title: item.title,
                                      pricings: item.pricings,
                                      id: item.id);
                                  return CourseItem(
                                    height: 180,
                                    imageWidth: 118,
                                    imageHeight: 118,
                                    course: course,
                                    width: 150,
                                    margin: const EdgeInsets.only(left: 10),
                                  );
                                },
                                shrinkWrap: true,
                              ),
                            )
                          ],
                        ),
                      )
                    : Container()
          ],
        ));
  }
}
