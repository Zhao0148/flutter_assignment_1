import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({super.key, required this.path, required this.padding, required this.isImageNetwork});

  final String path;
  final EdgeInsetsGeometry padding;
  final bool isImageNetwork;

  @override
  Widget build(BuildContext context) {
    if (isImageNetwork) {
      return Padding(
        padding: padding,
        child: Image.network(
          path,
          height: 300,
          width: 400,
          fit: BoxFit.cover,
        ),
      );
    } else {
      return Padding(
        padding: padding,
        child: Image.asset(
          path,
          height: 300,
          width: 400,
          fit: BoxFit.cover,
        ),
      );
    }
  }
}
