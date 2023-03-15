import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "19.99\$",
          style: TextStyle(fontSize: 20),
        ),
        const Spacer(),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.amber,
          size: 18,
        ),
        const SizedBox(
          width: 5,
        ),
        const Text(
          "4.8",
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          "(2380)",
          style: TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.5)),
        ),
      ],
    );
  }
}
