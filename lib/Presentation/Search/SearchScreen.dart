import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/Search/Controller/SearchScreenController.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

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
                      child: ListView.separated(
                        itemCount: _controller.searchResults.length,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(bottom: 80),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var item = _controller.searchResults[index];
                          return InkWell(
                            onTap: () {},
                            child: ListTile(
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 35),
                              title: Text(
                                item.title ?? "",
                                style: const TextStyle().withIranSans(),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider(
                            thickness: 1,
                            indent: 30,
                            endIndent: 30,
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
