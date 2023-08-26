import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RoundedNetworkImage extends StatelessWidget {
  const RoundedNetworkImage({Key? key, this.width, this.height, this.imageUrl})
      : super(key: key);

  final double? width;
  final double? height;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(7),
        child: CachedNetworkImage(
          imageUrl: imageUrl ?? "",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
