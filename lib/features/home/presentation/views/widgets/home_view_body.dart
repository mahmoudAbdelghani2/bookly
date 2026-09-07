import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 25),
          FeaturedBooksListView(),
          SizedBox(height: 40),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Best Seller',
              style: Styles.mediumTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
