import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Search/Controller/SearchScreenController.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../Core/Dto/Models/Course.dart';
import '../Courses/Widgets/CourseItem.dart';
import 'Widgets/SearchField.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  final _controller = Get.find<SearchScreenController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Stack(
      fit: StackFit.expand,
          children: [
            Column(
              children: [
                SearchField(),
                if (!_controller.isLoading.value &&
                    _controller.hasSearched.value)
                  Expanded(
                    child: SmartRefresher(
                      physics: const BouncingScrollPhysics(),
                      enablePullUp: true,
                      enablePullDown: false,
                      footer: const ClassicFooter(
                        idleText: "",
                        noDataText: "",
                        loadingText: "",
                        failedText: "",
                        canLoadingText: "",
                      ),
                      onRefresh: _controller.refreshPage,
                      onLoading: _controller.loadNextPage,
                      controller: _controller.refreshController,
                      child: GridView.builder(
                        itemCount: _controller.searchResults.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          var item = _controller.searchResults[index];
                          var course = Course(
                              thumbnailImageUrl: item.thumbnailUrl,
                              title: item.title,
                              pricings: item.pricings,
                              id: item.id);
                          return InkWell(
                            onTap: (){
                              _controller.handleItemClick(item);
                            },
                            child: IgnorePointer(
                              child: CourseItem(
                                height: 180,
                                imageWidth: 118,
                                imageHeight: 118,
                                course: course,
                                width: 150,
                                margin: const EdgeInsets.all(10),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
              ],
            ),
            if (_controller.isLoading.value)
              const SpinKitFadingCircle(
                size: 20,
                color: Colors.red,
              ),
            if (!_controller.hasSearched.value)
              Center(
                child: Text(
                  StringResource.nothingSearchedYet,
                  style: const TextStyle().withIranSans(
                      color: const Color(0xffCCCCCC),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            if (_controller.hasSearched.value &&
                _controller.searchResults.isEmpty &&
                !_controller.isLoading.value)
              Center(
                child: Text(
                  StringResource.noResult,
                  style: const TextStyle().withIranSans(
                      color: const Color(0xffCCCCCC),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ));
  }
}
