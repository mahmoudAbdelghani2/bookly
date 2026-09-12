import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_container.dart';
import 'package:flutter/material.dart';

class SuggestedBooksListView extends StatelessWidget {
  const SuggestedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CustomListViewContainer();
        },
      ),
    );
  }
}
