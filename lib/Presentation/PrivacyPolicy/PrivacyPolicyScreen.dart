import 'package:flutter/material.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/CommonWidgets/BaseScreen.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  PrivacyPolicyScreen({super.key});
  final _vertical = ScrollController();
  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return BaseScreen(
      child: Stack(
        children: [
          Container(
            color: colorScheme.background,
            height: MediaQuery.sizeOf(context).height / 2,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    StringResource.privacyPageTitle,
                    style: const TextStyle().withIranSans(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Directionality(
                        textDirection: TextDirection.ltr,
                        child: Scrollbar(
                          trackVisibility: true,
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            controller: _vertical,
                            child: Text(StringResource.privacyText,
                            textAlign: TextAlign.justify,
                            textDirection: TextDirection.rtl,
                            style: const TextStyle(
                            ).withIranSans(
                              color: colorScheme.background,
                            ),),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
