import 'package:bookly/core/utils/consts.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          'Search',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        // elevation: 3,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
      ),
      body: const SafeArea(
        child: SearchScreenBody(),
      ),
    );
  }
}
