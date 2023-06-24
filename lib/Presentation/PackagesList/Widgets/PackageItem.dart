import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Dto/Models/Package.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../../../infrastructure/Navigation/Routes.dart';

class PackageItem extends StatelessWidget {
  const PackageItem({Key? key, required this.package}) : super(key: key);

  final Package package;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          color: Colors.white,
          child: InkWell(
            onTap: (){
              Get.toNamed(Routes.courses,arguments: {"packageSlug":package.slug});
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CachedNetworkImage(
                      height: 270, imageUrl: package.thumbnailUrl ?? ""),
                  Text(
                    package.name ?? "",
                    style: const TextStyle().withIranSans(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
