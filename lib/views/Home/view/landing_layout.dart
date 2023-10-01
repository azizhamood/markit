import 'package:flutter/material.dart';

import '../../Category/views/categoryIndex.dart';
import '../../Product/views/product_index.dart';
import 'home_view.dart';

class LandingLayout extends StatefulWidget {
  const LandingLayout({Key? key}) : super(key: key);

  @override
  State<LandingLayout> createState() => _LandingLayoutState();
}

class _LandingLayoutState extends State<LandingLayout> {
  final controller = PageController();
  int currentIndex = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leadingWidth: 110,
        leading: const Row(
          children: [
            Badge(
              alignment: Alignment.topLeft,
              textColor: Colors.white,
              label: Text('4'),
              child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Icon(
                  Icons.local_grocery_store_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(width: 10),
            Icon(Icons.star_border, color: Colors.grey),
            SizedBox(width: 10),
            Icon(Icons.monetization_on_outlined, color: Colors.grey),
          ],
        ),
        title: const Text('Waset'),
        actions: const [
          Icon(Icons.message_outlined, color: Colors.grey),
          SizedBox(width: 10),
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 10),
          Icon(Icons.category_outlined, color: Colors.grey),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: PageView(
          controller: controller,
          children:  [
            HomeView(),

            CategoryIndex(),

            Center(
              child: Text('page 3'),
            ),
            Center(
              child: Text('page 4'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (page) {
          setState(() {
            currentIndex = page;
            controller.animateToPage(
              page,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'الرئيسية',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'الفئات',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'حسابي',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'سلة التسوق',
            icon: Icon(Icons.local_grocery_store_outlined),
          ),
        ],
      ),
    );
  }
}
