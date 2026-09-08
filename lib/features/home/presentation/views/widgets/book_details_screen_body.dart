import 'package:bookly/features/home/presentation/views/widgets/custom_details_screen_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_container.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomDetailsScreenAppBar(),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15),
              child: const CustomListViewContainer(),
            ),
          ],
        ),
      ),
    );
  }
}
