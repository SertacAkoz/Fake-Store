import 'package:fake_store/core/components/images/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomImage extends StatelessWidget {
  final String url;
  const CustomImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return CachedImage(
      url: url,
      placeHolder: const CircularProgressIndicator(),
      error: const FaIcon(FontAwesomeIcons.circleXmark),
    );
  }
}
