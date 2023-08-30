import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lingo/Presentation/CommonWidgets/RoundedNetworkImage.dart';

import '../Controller/HomeScreenController.dart';

class SliderWidget extends StatelessWidget {
  final HomeScreenController _controller = Get.find<HomeScreenController>();

  SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return (_controller.isLoadingBanners.value)
        ? SizedBox(
            height: 150,
            width: double.infinity,
            child: Center(
              child: SpinKitFadingCircle(
                color: colorScheme.background,
                size: 24,
              ),
            ),
          )
        : (_controller.banners.isNotEmpty)
            ? Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: _controller.banners.length,
                    itemBuilder: (context, index, pageIndex) {
                      var banner = _controller.banners[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                                width: double.infinity,
                                child: CachedNetworkImage(
                                  imageUrl: banner.fileUrl,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                        height: 150,
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          _controller.currentCarouselIndex.value = index;
                        }),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                            _controller.banners.asMap().entries.map((entry) {
                          return Container(
                            width: 8,
                            height: 8,
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _controller.currentCarouselIndex.value ==
                                        entry.key
                                    ? const Color(0xff143794)
                                    : const Color(0xffDAE1F3)),
                          );
                        }).toList(),
                      )),
                ],
              )
            : Container();
  }
}
