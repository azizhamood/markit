import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markit/models/categoryTab.dart';
import 'package:markit/views/Category/bloc/category_bloc.dart';
import 'package:markit/views/Category/model/categoryChild.dart';
import 'package:markit/views/Category/views/category_child.dart';
import '../repository/categoryRepository.dart';
import 'Multibloc.dart';

class CategoryIndex extends StatefulWidget {
  const CategoryIndex({Key? key}) : super(key: key);

  @override
  State<CategoryIndex> createState() => _IndexState();
}

class _IndexState extends State<CategoryIndex>with TickerProviderStateMixin {
  CategoryBloc categoryBloc=CategoryBloc();
  CategoryBloc categoryBloc2=CategoryBloc();
  CategoryTabLoadingState Data= CategoryTabLoadingState();
  CategoryRepository repository= CategoryRepository();
  CategoryChild? categoryChild;
  int selectIndex=1;
  String? tabId="2";

  late TabController _tabController;
  @override
  void initState() {
    categoryBloc.add(CategoryInitialFetchEvent());
  }

  @override
  Widget build(BuildContext context) {

    return BlocProvider<CategoryBloc>(
        create: (context)=>categoryBloc,
        child:CategoryTabs()
    );

  }
}


class CategoryTabs extends StatefulWidget {
  const CategoryTabs({Key? key}) : super(key: key);

  @override
  State<CategoryTabs> createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> with TickerProviderStateMixin {
  CategoryTabLoadingState Data= CategoryTabLoadingState();
  CategoryRepository repository= CategoryRepository();
  CategoryChild? categoryChild;
  int selectIndex=1;
  String? tabId="2";
  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    final CategoryBloc categoryBloc=BlocProvider.of<CategoryBloc>(context);
    return  BlocBuilder<CategoryBloc,CategoryState>(
      buildWhen: (s1,s2){
        if(s2.runtimeType==CategoryTabLoadingState){
          print("object");
          return true;
        }
        else
          return false;
      },
        bloc:categoryBloc ,
        builder: (context,state){
          switch(state.runtimeType) {
            case ( CategoryTabLoadingState ):{

              Data = state as CategoryTabLoadingState;
              _tabController=TabController(length: Data.listTab!.length,initialIndex: 0, vsync: this);
              categoryBloc.add(CategoryChildrenFetchEvent(Data.listTab?.first.id));
              return DefaultTabController(
                length: Data.listTab!.length,
                child: Column(
                  children: [
                    Container(
                      child: TabBar(
                          onTap: (i){
                            _tabController.index=i;
                            categoryBloc.add(CategoryChildrenFetchEvent(Data.listTab?[i].id));

                          },
                          tabs: Data.listTab!
                              .map((e) =>Text(e.name!,overflow:TextOverflow.ellipsis ,))
                              .toList()),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children:Data.listTab!
                            .map((e) =>Container(child: CategoryNav(cruntTab:tabId ,)))
                            .toList() ,
                      ),
                    ),

                  ],
                ),

              );

            }break;
            default:{
              return Center(child: CircularProgressIndicator(color: Colors.cyan,));
            }

          }

        }
    );
  }
}
