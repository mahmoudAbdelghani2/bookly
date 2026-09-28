import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_container.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  final List<BookEntity> books;
  const FeaturedBooksListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.builder(
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final bookImageUrl = books[index].image ?? '';
          return CustomListViewContainer(
            imageUrl: bookImageUrl,
          );
        },
      ),
    );
  }
}
