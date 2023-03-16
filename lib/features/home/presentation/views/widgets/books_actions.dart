import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CustomButton(
            text: "19.99\$",
            color: Colors.white,
            textColor: Colors.black,
            borderRadiusGeometry: const BorderRadius.only(
              bottomLeft: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
            onTap: () {},
          ),
        ),
        Expanded(
          child: CustomButton(
            text: "Free preview",
            color: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadiusGeometry: const BorderRadius.only(
              bottomRight: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
