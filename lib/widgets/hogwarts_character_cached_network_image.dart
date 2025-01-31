import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:harry_potter/styles/assets.gen.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
  });

  final String imageUrl;

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        errorWidget: (context, url, error) {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white70,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Assets.images.chocolateFrogCard.provider(),
              ),
            ),
          );
        },
        imageBuilder: (context, imageProvider) {
          return DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: imageProvider,
              ),
            ),
          );
        },
      ),
    );
  }
}
