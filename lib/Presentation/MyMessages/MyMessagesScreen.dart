import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Helpers/Tools.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/MyMessages/Controller/MyMessagesScreenController.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../infrastructure/Navigation/Routes.dart';

class MyMessagesScreen extends StatelessWidget {
  MyMessagesScreen({super.key});

  final MyMessagesScreenController _controller =
      Get.find<MyMessagesScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.addMessage();
        },
        child: const FaIcon(FontAwesomeIcons.plus),
      ),
      body: BaseScreen(
        child: SmartRefresher(
          physics: const BouncingScrollPhysics(),
          controller: _controller.refreshController!,
          enablePullUp: true,
          enablePullDown: true,
          footer: const ClassicFooter(
            idleText: "",
            noDataText: "",
            loadingText: "",
            failedText: "",
            canLoadingText: "",
          ),
          onLoading: _controller.loadNextPage,
          onRefresh: _controller.refreshPage,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                StringResource.myMessages,
                style: const TextStyle().withIranSans(
                    fontSize: 18,
                    color: colorScheme.background,
                    fontWeight: FontWeight.bold),
              ),
              Obx(() => (_controller.isLoading.value)
                  ? Center(
                    child: SpinKitFadingCircle(
                color: colorScheme.background,
                size: 24,
              ),
                  )
                  : Padding(
                    padding: const EdgeInsets.all(30),
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _controller.messages.length,
                      itemBuilder: (context, index) {
                        var message = _controller.messages[index];
                        return Material(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                          child: InkWell(
                            onTap: () {
                              _controller.showMessage(message);
                            },
                            child: ListTile(
                              title: Text(
                                message.subject ?? "",
                                style: TextStyle().withIranSans(
                                  fontSize: 16,
                                ),
                              ),
                              subtitle: Row(
                                children: [
                                  Text(
                                    "تاریخ: ",
                                    style: TextStyle().withIranSans(
                                        color: const Color(0xff525252),
                                        fontSize: 14),
                                  ),
                                  Text(
                                  Tools.getOnlyDate(message.createdAt!),
                                    style: TextStyle().withIranSans(
                                        color: const Color(0xff525252),
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              trailing: Stack(
                                children: [
                                  Image.asset(
                                    "assets/images/messages_ic.png",
                                  ),
                                  if(!message.seen!)
                                    Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: colorScheme.background,
                                      ),
                                    )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
