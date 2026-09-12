// ignore_for_file: deprecated_member_use

import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_details_screen_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_list_view_container.dart';
import 'package:bookly/features/home/presentation/views/widgets/suggested_books_listview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomDetailsScreenAppBar(),
              const SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.23),
                child: const CustomListViewContainer(),
              ),
              const SizedBox(height: 35),
              Text(
                'Harry Potter and the Goblet of Fire',
                style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 6),
              Text(
                'J.K. Rowling',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.white.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FaIcon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                    size: 18,
                  ),
                  const SizedBox(width: 6.3),
                  const Text('4.8', style: Styles.textStyle18),
                  const SizedBox(width: 5),
                  Text('(2345)',
                      style: Styles.textStyle18
                          .copyWith(color: Colors.grey.shade400)),
                ],
              ),
              const SizedBox(height: 32),
              const BookAction(),
              const SizedBox(height: 45),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("You can also like",
                    style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              const SizedBox(height: 16),
              const SuggestedBooksListView(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
