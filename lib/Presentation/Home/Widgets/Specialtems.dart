import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../../../infrastructure/Navigation/Routes.dart';

class SpecialItems extends StatelessWidget {
  const SpecialItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 100,
      child: Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: InkWell(
                onTap: (){

                },
                child: Column(
                  children: [
                    ClipOval(
                        child: Image.asset(
                          "assets/images/grammer_ic.png",
                          width: 60,
                          height: 60,
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "پکیج طلائی",
                      maxLines: 1,
                      style: const TextStyle().withIranSans(
                          color: colorScheme.background,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: InkWell(
                onTap: (){
                  Get.toNamed(Routes.searchByTag,arguments: {"filter":"لغات"});
                },
                child: Column(
                  children: [
                    ClipOval(
                        child: Image.asset(
                          "assets/images/words_ic.png",
                          width: 60,
                          height: 60,
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "لغات",
                      maxLines: 1,
                      style: const TextStyle().withIranSans(
                          color: colorScheme.background,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: InkWell(
                onTap: (){
                  Get.toNamed(Routes.searchByTag,arguments: {"filter":"گرامر"});
                },
                child: Column(
                  children: [
                    ClipOval(
                        child: Image.asset(
                          "assets/images/grammer_ic.png",
                          width: 60,
                          height: 60,
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "گرامر",
                      maxLines: 1,
                      style: const TextStyle().withIranSans(
                          color: colorScheme.background,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: InkWell(
                onTap: (){
                  Get.toNamed(Routes.searchByTag,arguments: {"filter":"مکالمه"});
                },
                child: Column(
                  children: [
                    ClipOval(
                        child: Image.asset(
                          "assets/images/speaking_ic.png",
                          width: 60,
                          height: 60,
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "مکالمه",
                      maxLines: 1,
                      style: const TextStyle().withIranSans(
                          color: colorScheme.background,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: InkWell(
                onTap: (){
                  Get.toNamed(Routes.searchByTag,arguments: {"filter":"سفر"});
                },
                child: Column(
                  children: [
                    ClipOval(
                        child: Image.asset(
                          "assets/images/travel_ic.png",
                          width: 60,
                          height: 60,
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "سفر",
                      maxLines: 1,
                      style: const TextStyle().withIranSans(
                          color: colorScheme.background,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              child: InkWell(
                onTap: (){
                  Get.toNamed(Routes.searchByTag,arguments: {"filter":"کودکان"});
                },
                child: Column(
                  children: [
                    ClipOval(
                        child: Image.asset(
                          "assets/images/kids_ic.png",
                          width: 60,
                          height: 60,
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "کودکان",
                      maxLines: 1,
                      style: const TextStyle().withIranSans(
                          color: colorScheme.background,
                          fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
