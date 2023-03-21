import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../data/models/book_model.dart';
import 'book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BestSellerBook extends StatelessWidget {
  const BestSellerBook({super.key, required this.book});
  final Book book;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8,
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context)
              .push(AppRouter.kBookDetailsViewRoute, extra: book);
        },
        child: Row(
          children: [
            AspectRatio(
                aspectRatio: 0.666,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: CachedNetworkImage(
                      imageUrl: book.image,
                      fit: BoxFit.fill,
                    ))),
            const SizedBox(
              width: 30,
            ),
            Flexible(
              // Wrap Column widget with Flexible
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    book.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 20, fontFamily: 'GT'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    book.authors,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 14, color: Colors.white.withOpacity(0.7)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Free",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      Expanded(child: BookRating()),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
