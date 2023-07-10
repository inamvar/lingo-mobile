import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/CommonWidgets/RoundedNetworkImage.dart';
import 'package:lingo/Presentation/MyCourses/Controller/MyCoursesController.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../infrastructure/Navigation/Routes.dart';
import '../CourseDetails/CourseDetailsScreen.dart';

class MyCoursesScreen extends StatelessWidget {
  MyCoursesScreen({Key? key}) : super(key: key);

  final MyCoursesController _controller = Get.find<MyCoursesController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return BaseScreen(
      child: Obx(() => (_controller.isLoading.value)
          ? SpinKitFadingCircle(
              size: 26,
              color: colorScheme.background,
            )
          : NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(
                    child: Container(
                      width: double.infinity,
                      height: 90,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 37, vertical: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/gift_ic.png",
                            width: 35,
                            height: 35,
                          ),
                          Text(
                            StringResource.myCoursesCount,
                            style: TextStyle().withIranSans(
                                color: colorScheme.background,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Obx(() => Text(
                                _controller.totalCourses.value.toString(),
                                style: TextStyle().withIranSans(
                                    color: Color(0xffF84C4D),
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                  )
                ];
              },
              body:(_controller.courses.isNotEmpty) ? Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6)),
                margin: const EdgeInsets.symmetric(horizontal: 37),
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 0),
                child: SmartRefresher(
                  physics: const BouncingScrollPhysics(),
                  controller: _controller.refreshController!,
                  enablePullUp: true,
                  enablePullDown: false,
                  footer: const ClassicFooter(
                    idleText: "",
                    noDataText: "",
                    loadingText: "",
                    failedText: "",
                    canLoadingText: "",
                  ),
                  onLoading: _controller.loadNextPage,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _controller.courses.length,
                    itemBuilder: (context, index) {
                      var item = _controller.courses[index];
                      return Material(
                        color: Colors.white,
                        child: InkWell(
                          onTap: (){
                            Get.to(() => CourseDetailsScreen(controllerTag: item.slug!),
                                preventDuplicates: false,
                                arguments: {"courseId": item.id!.toString()});
                          },
                          child: ListTile(
                            leading: RoundedNetworkImage(
                              width: 52,
                              height: 52,
                              imageUrl: item.thumbnailImageUrl ?? "",
                            ),
                            title: Text(item.title ?? "",
                            style: TextStyle().withIranSans(
                              color: Color(0xff525252),
                            ),),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context,index){
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Divider(
                          indent: 50,
                          endIndent: 50,
                          thickness: 1,
                        ),
                      );
                    },
                  ),
                ),
              ) : Container(),
            )),
    );
  }
}
