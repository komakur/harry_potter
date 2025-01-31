import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import 'package:harry_potter/core/utils/utils.dart';
import 'package:harry_potter/models/models.dart';
import 'package:harry_potter/styles/assets.gen.dart';

class HogwartsCharacterAvatar extends StatelessWidget {
  const HogwartsCharacterAvatar({
    super.key,
    required this.character,
    this.avatarSize = 24,
  });

  final Character character;

  final double avatarSize;

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        ColorUtils.createColorByString(character.name).withAlpha(100);

    final errorPlaceholder = ColoredBox(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Assets.images.chocolateFrogCard.image(),
      ),
    );

    final effectiveImage = character.image.isEmpty
        ? errorPlaceholder
        : CachedNetworkImage(
            fit: BoxFit.cover,
            scale: 0.8,
            imageUrl: character.image,
            cacheKey: character.id,
            fadeInDuration: const Duration(milliseconds: 100),
            errorWidget: (_, child, __) {
              return errorPlaceholder;
            },
          );
    return DecoratedBox(
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(color: Colors.white54),
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        maxRadius: avatarSize,
        child: ClipOval(
          child: SizedBox(
            height: avatarSize * 2,
            width: avatarSize * 2,
            child: effectiveImage,
          ),
        ),
      ),
    );
  }
}
