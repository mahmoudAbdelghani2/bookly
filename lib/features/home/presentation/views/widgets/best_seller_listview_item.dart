import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/consts.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(kDetailsPath);
      },
      child: SizedBox(
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
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      'Harry Potter and the Goblet of Fire',
                      style:
                          Styles.textStyle20.copyWith(fontFamily: kSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19.99 \$',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      // const SizedBox(width: 12),
                      const Spacer(),
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
