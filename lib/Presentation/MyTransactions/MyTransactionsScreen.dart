import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/CustomButton.dart';
import 'package:lingo/Presentation/MyTransactions/Controller/MyTransactionsController.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../Core/Configs/StringResource.dart';
import '../../Core/Helpers/Tools.dart';
import '../CommonWidgets/BaseScreen.dart';
import '../CommonWidgets/RoundedNetworkImage.dart';

class MyTransactionsScreen extends StatelessWidget {
  MyTransactionsScreen({super.key});

  final MyTransactionsController _controller =
      Get.find<MyTransactionsController>();

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
                            StringResource.myTransactionsCount,
                            style: TextStyle().withIranSans(
                                color: colorScheme.background,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Obx(() => Text(
                                _controller.totalOrders.value.toString(),
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
              body: (_controller.orders.isNotEmpty)
                  ? Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(6)),
                      margin: const EdgeInsets.symmetric(horizontal: 37),
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 0),
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
                          itemCount: _controller.orders.length,
                          itemBuilder: (context, index) {
                            var item = _controller.orders[index];
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                          flex: 2,
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 10),
                                            decoration: BoxDecoration(
                                                color: Colors.blueAccent
                                                    .withAlpha(50),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Text(
                                              item.courseName ?? "",
                                              style: const TextStyle()
                                                  .withIranSans(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          )),
                                      Flexible(
                                          flex: 1,
                                          child: Column(
                                            children: [
                                              Text(
                                                Tools.getOnlyDate(
                                                    item.orderDate!),
                                                style: TextStyle().withIranSans(
                                                  fontSize: 13,
                                                ),
                                              ),
                                              Text(
                                                Tools.getTimeOfDate(
                                                    item.orderDate!),
                                                style: TextStyle().withIranSans(
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 15),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.white),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                StringResource.price,
                                                style: const TextStyle()
                                                    .withIranSans(
                                                        color: colorScheme
                                                            .background,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "${Tools.seRagham(item.price?.toString() ?? "")} تومان ",
                                                style: TextStyle().withIranSans(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                StringResource.discount,
                                                style: const TextStyle()
                                                    .withIranSans(
                                                        color: colorScheme
                                                            .background,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "${Tools.seRagham(item.discount?.toString() ?? "-")} تومان ",
                                                style: TextStyle().withIranSans(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                StringResource.finalPrice,
                                                style: const TextStyle()
                                                    .withIranSans(
                                                        color: colorScheme
                                                            .background,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "${Tools.seRagham(item.finalPrice?.toString() ?? "")} تومان ",
                                                style: const TextStyle()
                                                    .withIranSans(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 12),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 80,
                                        height: 40,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            color: const Color(0xffF84C4D),
                                            child: InkWell(
                                              onTap: () {
                                                _controller
                                                    .downloadReceipt(item);
                                              },
                                              child: Center(
                                                child: (item.isDownloading)
                                                    ? SizedBox(
                                                  width: 15,
                                                      height: 15,
                                                      child: CircularProgressIndicator(
                                                          value: item.downloadPercent,
                                                        strokeWidth: 2,
                                                        color: Colors.white,
                                                        ),
                                                    )
                                                    : FaIcon(
                                                        (item.isExist)
                                                            ? FontAwesomeIcons
                                                                .folderOpen
                                                            : FontAwesomeIcons
                                                                .download,
                                                        color: Colors.white,
                                                      ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 20,
                            );
                          },
                        ),
                      ),
                    )
                  : Container(),
            )),
    );
  }
}
