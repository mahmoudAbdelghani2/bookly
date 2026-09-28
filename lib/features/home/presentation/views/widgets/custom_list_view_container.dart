import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListViewContainer extends StatelessWidget {
  final String imageUrl;
  const CustomListViewContainer({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.7 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.fill,
              placeholder: (context, url) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                );
              },
              errorWidget: (context, url, error) {
                return const Center(
                  child: Icon(Icons.error),
                );
              }),
        ));
  }
}
