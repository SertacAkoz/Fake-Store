import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:fake_store/core/components/container/white_space_box.dart';

class ErrorView extends StatelessWidget {
  final Widget child;
  const ErrorView({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const FaIcon(FontAwesomeIcons.circleXmark),
            const WhiteSpaceBox(size: BoxSize.SMALL, type: BoxType.VERTICAL),
            child,
          ],
        )
      ],
    );
  }
}
