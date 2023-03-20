import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          aspectRatio: 0.6696,
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            errorWidget: (context, url, error) =>
                const Center(child: Icon(Icons.warning, color: Colors.red)),
          )),
    );
  }
}
// }
// Container(
//         width: MediaQuery.of(context).size.width * 0.4,
//         height: MediaQuery.of(context).size.height * 0.27,
//         decoration: BoxDecoration(
//             color: Colors.amber,
//             borderRadius: BorderRadius.circular(16),
//             image: DecorationImage(
//                 image: NetworkImage(imageLink), fit: BoxFit.fill)),
//       ),