import 'package:fake_store/core/extensions/context_extensions.dart';
import 'package:fake_store/product/components/images/custom_image.dart';
import 'package:flutter/material.dart';

import 'package:fake_store/core/components/container/white_space_box.dart';

import '../../../../product/model/response/item.dart';

class ItemRow extends StatelessWidget {
  final Item product;
  const ItemRow({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.paddingLow,
      child: Container(
        margin: EdgeInsets.only(bottom: context.lowValue),
        // color: context.theme.colorScheme.onPrimary,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: context.theme.colorScheme.primaryContainer,
        ),
        padding: context.paddingLow,
        child: Row(
          children: [
            Expanded(flex: 1, child: CustomImage(url: product.image)),
            const WhiteSpaceBox(size: BoxSize.SMALL, type: BoxType.HORIZONTAL),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.title, style: context.textTheme.titleSmall?.copyWith(color: context.theme.colorScheme.onPrimaryContainer)),
                  const WhiteSpaceBox(size: BoxSize.SMALL, type: BoxType.VERTICAL),
                  Text(product.price.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
