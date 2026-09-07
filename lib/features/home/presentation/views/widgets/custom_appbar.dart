import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetsData.kLogo, height: 25),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, size: 30),
        ),
      ],
    );
  }
}
