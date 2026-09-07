import 'package:bookly/core/utils/assets.dart';
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
              style: Styles.textStyle18,
            ),
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.kBook1),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Text(
                  'Harry Potter and the Goblet of Fire',
                  // style: Styles.mediumTextStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'J.K. Rowling',
                //style: Styles.mediumTextStyle,
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 18),
                  const SizedBox(width: 6),
                  const Text('4.8', style: Styles.textStyle18),
                  const SizedBox(width: 6),
                  Text('(2345)',
                      style: Styles.textStyle18
                          .copyWith(color: Colors.grey.shade400)),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
