import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly/features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: CustomSearchTextField(),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Search Results',
              style: Styles.textStyle18,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(child: SearchResultsListView()),
      ],
    );
  }
}

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        // shrinkWrap: true,
        padding: EdgeInsets.zero,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: BestSellerListViewItem(),
          );
        },
      ),
    );
  }
}
