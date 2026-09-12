import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewContainer extends StatelessWidget {
  const CustomListViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage(AssetsData.kBook1),
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
