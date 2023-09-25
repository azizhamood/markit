import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/category_bloc.dart';
import '../model/categoryChild.dart';
import 'Multibloc.dart';





class CategoryDetails extends StatelessWidget {

  String? cat_id;

  CategoryChild  categories= CategoryChild();
  List<Child>? childs= <Child>[];
  CategoryBloc categoryBloc=CategoryBloc();
  List<ChildChild>? child=<ChildChild>[];
   CategoryDetails({Key? key, this.cat_id}) : super(key: key){
     if(cat_id=="2")
       categoryBloc.add(CategoryChildrenFetchEvent(cat_id));
   }

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<CategoryBloc,CategoryState>(
       bloc: categoryBloc,
       listenWhen: (previous, current) => current is CategoryInitialFetchEvent,
       buildWhen: (previous, current) => current is! CategoryInitialFetchEvent,
       listener:(context,state){},
        builder: (context,state){
         switch (state.runtimeType){
           case CategoryChildrenLoadingState:{
             final Data =state as CategoryChildrenLoadingState;
             categories=Data.categories;
             childs=categories.content?[0].child!;
             return  Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 // Expanded(
                 //     child: ListView.builder(
                 //         shrinkWrap: true,
                 //         physics: ClampingScrollPhysics(),
                 //         itemCount: categories.content?[0].child!.length,
                 //         itemBuilder: (context,index){
                 //           return  Column(
                 //             mainAxisSize: MainAxisSize.min,
                 //             crossAxisAlignment: CrossAxisAlignment.start,
                 //             children: [
                 //               GestureDetector(
                 //                   child: Padding(
                 //                        padding: EdgeInsets.only(left: 0,top: 8,right: 0,bottom: 5),
                 //                       child: Text(childs![index].name!,softWrap: true,)),
                 //                 onTap: (){
                 //                    child=childs?[index].child;
                 //
                 //                 },
                 //               ),
                 //
                 //             //  Container(margin: EdgeInsets.all(10),height: 400,width: 400,color: Colors.orange,)
                 //             ],
                 //           );
                 //         }
                 //     )
                 // ),
                 Expanded(
                   child: Column(
                     children: [
                     //  ChildCategoryDetails(child: childs!.first.child!,),
                       Expanded(child: CategoryNav())
                     ],
                   ),
                 )
               ],
             );

           }break;
           default:{
             return Center(child: CircularProgressIndicator(),);
           }

         }

        },
    );
  }
}


class ChildCategoryDetails extends StatefulWidget {
  List<ChildChild>? child;
   ChildCategoryDetails({Key? key,this.child}) : super(key: key);

  @override
  State<ChildCategoryDetails> createState() => _ChildCategoryDetailsState();
}

class _ChildCategoryDetailsState extends State<ChildCategoryDetails> {

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
         itemCount: widget.child!.length,
        itemBuilder:(context,i){
          return Text("j");
        });
  }
}
