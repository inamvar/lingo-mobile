import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';

import '../../../Core/Configs/StringResource.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Container(
      color: const Color(0xffEDEFF3),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorScheme.background,
                    ),
                    child: Center(
                        child: Text(
                          StringResource.guestUser,
                          style: const TextStyle().withIranSans(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        )),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        StringResource.loginIntoAccount,
                        style: const TextStyle().withIranSans(
                            fontWeight: FontWeight.w300,
                            fontSize: 17,
                            color: colorScheme.background),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    indent: 35,
                    endIndent: 35,
                    thickness: 1.5,
                  ),
                  Material(
                    color: const Color(0xffEDEFF3),
                    child: InkWell(
                      onTap: () {},
                      child: ListTile(
                        contentPadding: EdgeInsets.only(right: 35),
                        title: Text(
                          StringResource.register,
                          style: const TextStyle().withIranSans(
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                              color: colorScheme.background),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: const Color(0xffEDEFF3),
                    child: InkWell(
                      onTap: () {},
                      child: ListTile(
                        contentPadding: EdgeInsets.only(right: 35),
                        title: Text(
                          StringResource.home,
                          style: const TextStyle().withIranSans(
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                              color: colorScheme.background),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: const Color(0xffEDEFF3),
                    child: InkWell(
                      onTap: () {},
                      child: ListTile(
                        contentPadding: EdgeInsets.only(right: 35),
                        title: Text(
                          StringResource.freePackages,
                          style: const TextStyle().withIranSans(
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                              color: colorScheme.background),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: const Color(0xffEDEFF3),
                    child: InkWell(
                      onTap: () {},
                      child: ListTile(
                        contentPadding: EdgeInsets.only(right: 35),
                        title: Text(
                          StringResource.educationalPackages,
                          style: const TextStyle().withIranSans(
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                              color: colorScheme.background),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: const Color(0xffEDEFF3),
                    child: InkWell(
                      onTap: () {},
                      child: ListTile(
                        contentPadding: EdgeInsets.only(right: 35),
                        title: Text(
                          StringResource.discounts,
                          style: const TextStyle().withIranSans(
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                              color: colorScheme.background),
                        ),
                      ),
                    ),
                  ),
                  const Divider(
                    indent: 35,
                    endIndent: 35,
                    thickness: 1.5,
                  ),
                  Material(
                    color: const Color(0xffEDEFF3),
                    child: InkWell(
                      onTap: () {},
                      child: ListTile(
                        contentPadding: EdgeInsets.only(right: 35),
                        title: Text(
                          StringResource.contactUs,
                          style: const TextStyle().withIranSans(
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                              color: colorScheme.background),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              color: colorScheme.background,
              height: 60,
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
