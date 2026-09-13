import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/consts.dart' as AppRouter;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetsData.kLogo, height: 25),
        IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchPath);
          },
          icon: const Icon(Icons.search,
              size: 30, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
