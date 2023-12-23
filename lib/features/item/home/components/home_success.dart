import 'package:fake_store/core/animations/opacity_animation.dart';
import 'package:fake_store/product/base/base_props.dart';
import 'package:flutter/material.dart';

import '../../../../product/model/response/item.dart';
import './item_row.dart';

class HomeSuccessView extends StatelessWidget with BaseProps {
  final List<Item> products;
  const HomeSuccessView({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return OpacityAnimation(
          delay: index <= 10 ? durationConstants.lowDuration * index : durationConstants.lowDuration, 
          child: ItemRow(product: products[index]),
        );
      },
    );
  }
}
