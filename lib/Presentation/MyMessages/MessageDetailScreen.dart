import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Dto/Models/Message.dart';
import 'package:lingo/Core/Helpers/Tools.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';
import 'package:lingo/Presentation/MyMessages/Controller/MessageDetailScreenController.dart';

class MessageDetailScreen extends StatelessWidget {
  MessageDetailScreen({super.key});

  final _controller = Get.find<MessageDetailScreenController>();

  late ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    colorScheme = Theme.of(context).colorScheme;
    return BaseScreen(
      child: Obx(() => (_controller.isLoading.value)
          ? SpinKitFadingCircle(
              color: colorScheme.background,
              size: 24,
            )
          : SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                StringResource.yourMessage,
                                style: const TextStyle().withIranSans(
                                    color: colorScheme.background,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                  Tools.getOnlyDate(
                                      _controller.message!.createdAt!),
                                  style: const TextStyle().withIranSans(
                                      color: colorScheme.background,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7)),
                          child: Text(
                            _controller.message!.subject ?? "",
                            style: const TextStyle()
                                .withIranSans(color: const Color(0xff525252)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Text(
                        _controller.message!.body ?? "",
                        style: const TextStyle()
                            .withIranSans(color: const Color(0xff525252)),
                      ),
                    ),
                    if (_controller.message!.replies != null &&
                        _controller.message!.replies!.isNotEmpty)
                      buildAdminResponse()
                  ],
                ),
              ),
            )),
    );
  }

  buildAdminResponse() {
    var response = _controller.message!.replies![0];
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                StringResource.adminResponse,
                style: const TextStyle().withIranSans(
                    color: colorScheme.background, fontWeight: FontWeight.bold),
              ),
              Text(Tools.getOnlyDate(response.createdAt!),
                  style: const TextStyle().withIranSans(
                      color: colorScheme.background,
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(7)),
          child: Text(
            response.body ?? "",
            style:
                const TextStyle().withIranSans(color: const Color(0xff525252)),
          ),
        ),
      ],
    );
  }
}
