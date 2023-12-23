import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  final String url;
  final Widget placeHolder;
  final Widget error;
  const CachedImage({
    Key? key,
    required this.url,
    required this.placeHolder,
    required this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) => placeHolder,
      errorWidget: (context, url, error) => error,
    );
  }
}
