import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/category_bloc.dart';
import '../model/categoryChild.dart';

class CategoryNav extends StatefulWidget {
  String? cruntTab="2";
   CategoryNav({Key? key, this.cruntTab}) : super(key: key);

  @override
  State<CategoryNav> createState() => _CategoryNavState();
}

class _CategoryNavState extends State<CategoryNav> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAlignment = -1.0;

  CategoryBloc categoryBloc =CategoryBloc();
  @override
  Widget build(BuildContext context) {
    return ListCategory();

  }
}

class ListCategory extends StatefulWidget {
  const ListCategory({Key? key}) : super(key: key);

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {

  int indexthum=0;
  @override
  Widget build(BuildContext context) {
    final CategoryBloc bloc= BlocProvider.of<CategoryBloc>(context);

    return BlocBuilder<CategoryBloc,CategoryState>(
        bloc: bloc,
        buildWhen: (s1,s2){
          if(s2.runtimeType==CategoryChildrenLoadingState){
            return true;
          }
          else
            return false;
        },
        builder:(context,state){
        switch (state.runtimeType){
         case CategoryChildrenLoadingState:
          {
            final Data = state as CategoryChildrenLoadingState;
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount:Data.categories.content?[0].child!.length,
                      itemBuilder: (context,indesx){
                        bloc.add(CategoryChildThumbEvent(childchild: Data.categories.content?[0].child?[0].child));
                        indexthum=indesx;
                        return Container(
                          color: Colors.green,
                          width: 5,
                            child: GestureDetector(
                                 onTap: (){
                                   bloc.add(CategoryChildThumbEvent(childchild: Data.categories.content?[0].child?[indesx].child));
                                 },
                                child: Text((Data.categories.content?[0].child?[indesx].name)!)));
                      }
                  ),
                ),
                 Container(
                   width: 300,

                   child: Expanded(
                       child:CategoryGrid(thumb:(Data.categories.content?[0].child?[0].child)! )

                     ),
                 )
                // Expanded(
                //     child:CategoryGrid(thumb:(Data.categories.content?[0].child?[0].child)! )
                //
                // )
              ],
            );
          }
          default:
            return CircularProgressIndicator(color: Colors.orange,);
        }
        }

    );
  }
}



class CategoryGrid extends StatefulWidget {
  List< ChildChild>? thumb = <ChildChild>[];
  int indexthum=0;
  CategoryGrid({Key? key, this.thumb}) : super(key: key);

  @override
  State<CategoryGrid> createState() => _CategoryGridState();
}

class _CategoryGridState extends State<CategoryGrid> {

  @override
  Widget build(BuildContext context) {
    CategoryBloc bloc= BlocProvider.of<CategoryBloc>(context);
    return  BlocBuilder<CategoryBloc,CategoryState>(
      bloc: bloc,
      builder: (context,state){
         switch(state.runtimeType){
           case CategoryChildThumbState :{
             CategoryChildThumbState data= state as CategoryChildThumbState;
             data.categoryThumbs?.forEach((element) {
                print(element.target);
             });
             return
                    GridView.builder(
                     itemCount: data.categoryThumbs.length,
                     padding: const EdgeInsets.all(10),
                     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                       mainAxisExtent: 150,
                       maxCrossAxisExtent: 150,
                       crossAxisSpacing: 10,
                       mainAxisSpacing: 10,
                       childAspectRatio: 1,
                     ),
                     itemBuilder: (_, int index) =>
                         Container(

                             child: Column(
                               children: [
                                 Container(
                                     height: 100,
                                     child: Image.network ((data.categoryThumbs?[index].target)!)),
                                 Text((data.categoryThumbs?[index].alt)!)
                               ],
                             )),
                   );



           }

           default:
             return CircularProgressIndicator();
         }
      },

    );
  }
}

