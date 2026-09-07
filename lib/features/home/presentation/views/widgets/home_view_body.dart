import 'package:bookly/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_container.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(height: 16),
          CustomListViewContainer(),
        ],
      ),
    );
  }
}
