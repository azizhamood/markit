import 'package:flutter/material.dart';

import 'category_model.dart';
import 'item_model.dart';
import 'items_grid_view_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late Future<List<CategoryModel>> getCategories;

  @override
  void initState() {
    getCategories = _getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getCategories,
      builder: (_, AsyncSnapshot<List<CategoryModel>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.data != null) {
          final categories = snapshot.data!;
          return DefaultTabController(
            length: categories.length,
            child: Column(
              children: [
                TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 15),
                  tabs: categories.map((c) => Tab(text: c.name)).toList(),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: TabBarView(
                    children:
                        categories.map((c) => ItemsGridViewWidget(c.items)).toList(),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(snapshot.error.toString()),
                const SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      getCategories = _getCategories();
                    });
                  },
                  child: const Text('إعادة المحاولة'),
                )
              ],
            ),
          );
        }
      },
    );
  }

  Future<List<CategoryModel>> _getCategories() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      CategoryModel(
        id: 'id',
        name: 'Men',
        items: [
          ItemModel(
            id: 'id',
            name: 'name',
            imageUrl: 'https://img.ltwebstatic.com/images3_ccc/2023/08/29/7c/16932921276e78934e9cb21cf7c22f7728c427972b.png',
            price: 25,
            currency: 'RS',
            isFavorite: true,
            colors: [Colors.red, Colors.blue, Colors.purple],
          ),
          ItemModel(
            id: 'id',
            name: 'name',
            imageUrl: 'https://img.ltwebstatic.com/images3_ccc/2023/07/25/16902554908a725fae303c014b2dff97aac6a418d6.jpg',
            price: 25,
            currency: 'RS',
            isFavorite: false,
            colors: [Colors.red, Colors.blue, Colors.purple],
          ),
          ItemModel(
            id: 'id',
            name: 'name',
            imageUrl: 'https://img.ltwebstatic.com/images3_pi/2023/06/02/16856885263eaa5ca3732c0e3b9ede34bcbfdbe8f0_thumbnail_405x552.jpg',
            price: 25,
            currency: 'RS',
            isFavorite: true,
            colors: [Colors.red, Colors.blue, Colors.purple],
          ),
          ItemModel(
            id: 'id',
            name: 'name',
            imageUrl: 'https://img.ltwebstatic.com/images3_ccc/2023/08/22/4f/16926697974de1afe379b15df8050af90ce30cf18a.jpg',
            price: 25,
            currency: 'RS',
            isFavorite: false,
            colors: [Colors.red, Colors.blue, Colors.purple],
          ),
          ItemModel(
            id: 'id',
            name: 'name',
            imageUrl: 'https://img.ltwebstatic.com/images3_ccc/2023/07/25/1690255357a9c3dd50e3d9eb1ef04e4288da6eab50.jpg',
            price: 25,
            currency: 'RS',
            isFavorite: true,
            colors: [Colors.red, Colors.blue, Colors.purple],
          ),
          ItemModel(
            id: 'id',
            name: 'name',
            imageUrl: 'image link here',
            price: 25,
            currency: 'RS',
            isFavorite: false,
            colors: [Colors.red, Colors.blue, Colors.purple],
          ),
          ItemModel(
            id: 'id',
            name: 'name',
            imageUrl: 'imageUrl',
            price: 25,
            currency: 'RS',
            isFavorite: true,
            colors: [Colors.red, Colors.blue, Colors.purple],
          ),
          ItemModel(
            id: 'id',
            name: 'name',
            imageUrl: 'image link here',
            price: 25,
            currency: 'RS',
            isFavorite: false,
            colors: [Colors.red, Colors.blue, Colors.purple],
          ),
          ItemModel(
            id: 'id',
            name: 'name',
            imageUrl: 'imageUrl',
            price: 25,
            currency: 'RS',
            isFavorite: true,
            colors: [Colors.red, Colors.blue, Colors.purple],
          ),
          ItemModel(
            id: 'id',
            name: 'name',
            imageUrl: 'image link here',
            price: 25,
            currency: 'RS',
            isFavorite: false,
            colors: [Colors.red, Colors.blue, Colors.purple],
          ),
        ],
      ),
    ];
  }
}
