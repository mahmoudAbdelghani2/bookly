import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewContainer extends StatelessWidget {
  const CustomListViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: AspectRatio(
          aspectRatio: 2.8 / 4,
          child: Container(
            // width: MediaQuery.of(context).size.width * 0.4,
            // height: MediaQuery.of(context).size.height * 0.25,
            margin: const EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                image: AssetImage(AssetsData.kBook1),
                fit: BoxFit.cover,
              ),
            ),
          )),
    );
  }
}
