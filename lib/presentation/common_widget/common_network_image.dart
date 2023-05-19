import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CommonNetworkImage extends StatelessWidget {
  // final double width;
  final double height;
  final String imageUrl;

  const CommonNetworkImage({
    Key? key,
    required this.height,
    // required this.width,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      height: height,
      // width: width,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) {
        return Image(
          image: const AssetImage("assets/pictures/placeholder.png"),
          // width: width,
          height: height,
          fit: BoxFit.cover,
        );
      },
      placeholder: (context, url) {
        return Image(
          image: const AssetImage("assets/pictures/placeholder.png"),
          // width: width,
          height: height,
          fit: BoxFit.cover,
        );
      },
    );
  }
}
