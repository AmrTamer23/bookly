import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageLink});
  final String imageLink;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.6696,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.27,
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
                image: NetworkImage(imageLink), fit: BoxFit.fill)),
      ),
    );
  }
}
