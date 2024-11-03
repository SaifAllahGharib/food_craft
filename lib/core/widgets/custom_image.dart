import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_craft/core/widgets/custom_image_error.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: CachedNetworkImage(
        imageUrl: "",
        errorWidget: (context, url, error) => const CustomImageError(),
      ),
    );
  }
}
