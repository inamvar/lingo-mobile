import 'package:get/get.dart';
import 'package:lingo/Core/Configs/StringResource.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:flutter/material.dart';

import '../Controller/SearchScreenController.dart';

class SearchField extends StatelessWidget {
  SearchField({super.key});

  final SearchScreenController _controller = Get.find<SearchScreenController>();

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      height: 130,
      decoration: BoxDecoration(
          color: colorScheme.background,
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
                onChanged: _controller.onSearchTextChanged,
                controller: _controller.searchFieldController,
                maxLines: 1,
                style: const TextStyle().withIranSans(),
                decoration: InputDecoration(
                    suffixIcon: (_controller.hasSearched.value)
                        ? IconButton(
                            icon: const Icon(Icons.close),
                            onPressed: () {
                              _controller.searchFieldController?.clear();
                              _controller.onSearchTextChanged("");
                            },
                          )
                        : const Icon(Icons.search),
                    hintText: StringResource.searchScreenTitle,
                    hintStyle: const TextStyle()
                        .withIranSans(color: Colors.grey.shade500),
                    filled: true,
                    disabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    fillColor: Colors.white)),
          )
        ],
      ),
    );
  }
}
