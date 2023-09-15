import 'package:flutter/material.dart';

import 'item_model.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel item;

  const ItemWidget(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                item.imageUrl,
                height: 300,
                fit: BoxFit.contain,


              ),
            ),
            Positioned(
              left: 5,
              bottom: 5,
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.black.withOpacity(0.3),
                child: item.isFavorite
                    ? _favoriteIcon(Icons.favorite_outline)
                    : _favoriteIcon(Icons.favorite),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Text(
          item.name,
          style: const TextStyle(overflow: TextOverflow.ellipsis),
          maxLines: 2,
        ),
        Row(
          children: [
            Expanded(child: Text('${item.price} ${item.currency}')),
            const SizedBox(width: 10),
            for (final color in item.colors)
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: CircleAvatar(radius: 6, backgroundColor: color),
              )
          ],
        )
      ],
    );
  }

  Widget _favoriteIcon(IconData icon) =>
      Icon(icon, size: 12, color: Colors.white);
}
