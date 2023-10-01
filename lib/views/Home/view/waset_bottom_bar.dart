
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Category/views/categoryIndex.dart';

class WasetBottomBar extends StatefulWidget {
  const WasetBottomBar({Key? key}) : super(key: key);
  @override
  State<WasetBottomBar> createState() => _WasetBottomBarState();
}

class _WasetBottomBarState extends State<WasetBottomBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Widget> listPage=<Widget>[
    Container(child:Text("Page1"),),
    CategoryIndex(),
    Container(child:Text("Page3"),)

  ];

  List<BottomNavigationBarItem> listTabsItem = <BottomNavigationBarItem>[
    BottomNavigationBarItem(label: "profile", icon: Icon(Icons.account_circle_outlined)),
    BottomNavigationBarItem(label: "category", icon: Icon(Icons.category_outlined)),
    BottomNavigationBarItem(label: "cart", icon: Icon(Icons.category_outlined)),
  ];
  int crunnetIndex = 0;
  Future<dynamic>? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120), // Set this height
        child: Container(
          height: 100,
          color: Colors.orange,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [Text("One")],
              ),
            ],
          ),
        ),
      ),

      body: listPage[crunnetIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: crunnetIndex,
        items: listTabsItem,
        onTap: (index){
          crunnetIndex=index;
          setState(() {

          });
        },
      ),
    );
  }
}

