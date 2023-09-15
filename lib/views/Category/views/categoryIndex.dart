import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:markit/models/categoryTab.dart';

import '../repository/categoryRepository.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  CategoryRepository repository= CategoryRepository();
  String? tabId="2";
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: repository.getCategoryTabs(),
        builder: (context,snapshot){
          if(snapshot.hasData){
             List<CategoryTab>? list= snapshot.data;
            return Row(
              children :[ 
                Expanded(
                  flex: 1,
                  child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: snapshot.data?.length,
                  itemBuilder:(context,index){
                    tabId=list![index].id;
                    String? name=list?[index].name;
                    return Container(child: Padding(padding: EdgeInsets.all(10), child: Text(name!),),);
                  } ,
              ),),
                
              ]
            );
          }
          else if (snapshot.hasError){
            return Container(child: Text(snapshot.error.toString()),);
          }
          else {
            return CircularProgressIndicator();
          }

        });
  }
}
