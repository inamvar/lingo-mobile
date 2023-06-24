import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lingo/Core/Utils/Extensions/CustomTextStyle.dart';
import 'package:lingo/Presentation/PackagesList/Widgets/PackageItem.dart';

import '../../../Core/Dto/Models/Package.dart';

class PackageListView extends StatelessWidget {
  const PackageListView({Key? key, required this.packages}) : super(key: key);

  final List<Package> packages;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 70),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: packages.length,
      itemBuilder: (context, index) => PackageItem(package: packages[index]),
    );
  }
}
