import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key, required this.shimmerText});
  final String shimmerText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: kPrimaryColor,
          period: const Duration(milliseconds: 1500),
          child: Text(
            shimmerText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
