import 'package:flutter/material.dart';

import 'item_model.dart';
import 'item_widget.dart';

class ItemsGridViewWidget extends StatelessWidget {
  final List<ItemModel> items;

  const ItemsGridViewWidget(this.items, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisExtent: 360,
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemBuilder: (_, int index) => ItemWidget(items[index]),
    );
  }
}
