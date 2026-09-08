import 'package:flutter/material.dart';

class CustomDetailsScreenAppBar extends StatelessWidget {
  const CustomDetailsScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            size: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart_outlined,
            size: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
