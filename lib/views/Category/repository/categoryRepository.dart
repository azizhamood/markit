import 'dart:convert';


import '../../../models/response_model.dart';
import '../model/categoryChild.dart';
import '../../../models/categoryTab.dart';
import 'package:http/http.dart' as http;
class CategoryRepository {

   Future<List<CategoryTab>?> getCategoryTabs() async {
     try {
       var result = await http.get(Uri.parse(
           "http://10.0.2.2:3000/api/category"));
       ResponseModel<List<dynamic>> responseModel =  ResponseModel<List<dynamic>>().fromJson(jsonDecode(result.body));

       List<CategoryTab>? list= <CategoryTab>[];
      list= (responseModel.content as List).map((e) =>  CategoryTab().formJson(e)).toList();
       return list;
     }catch(ex){
       throw ex;
     }
   }


   Future<CategoryChild> getCategoryChild(String cat_id)async {
      try{
        var result = await http.get(Uri.parse(
            "http://10.0.2.2:3000/api/channel/${cat_id}"));
        CategoryChild  categoryChild= CategoryChild.fromJson(jsonDecode(result.body));

       // print(categoryChild.content?[0].child?[0].child?[0].thumb!.length);
        //print((categoryChild.content?[0].child?[0].thumb!.length)!);
        categoryChild.content?.forEach((element) {

          // element.child?.forEach((el) {
          //   print(el.child?[0].name);
          //   print(el.child?[1].thumb?.length);
          // });
        });
        return categoryChild;
      }
      catch(ex){
        throw ex;
      }
   }
}
