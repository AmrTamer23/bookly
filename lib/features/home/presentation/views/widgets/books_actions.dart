import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
    required this.link,
  });
  final link;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CustomButton(
            text: "Free",
            color: Colors.white,
            textColor: Colors.green,
            borderRadiusGeometry: const BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
            onTap: () {},
          ),
        ),
        Expanded(
          child: CustomButton(
            text: "Download",
            color: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadiusGeometry: const BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            onTap: () async {
              Uri url = Uri.parse(link);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              }
            },
          ),
        ),
      ],
    );
  }
}
