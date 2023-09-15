import 'dart:convert';

import '../../../models/response_model.dart';
import '../model/categoryChild.dart';
import '../../../models/categoryTab.dart';
import 'package:http/http.dart' as http;
class CategoryRepository {

   Future<List<CategoryTab>> getCategoryTabs() async {
     try {
       var result = await http.get(Uri.parse(
           "http://10.0.2.2:3000/api/category"));
       ResponseModel<List<dynamic>> responseModel =ResponseModel<List<dynamic>>().fromJson(jsonDecode(result.body));
       List<CategoryTab> list= <CategoryTab>[];
       responseModel.content?.forEach((element) {
         CategoryTab tab =
         CategoryTab().formJson(element as Map<String, dynamic>);
         list.add(tab);
       });

       return list;
     }catch(ex){
       throw ex;
     }
   }


   Future<CategoryChild> getCategoryChild(int cat_id)async {
      try{
        var result = await http.get(Uri.parse(
            "http://10.0.2.2:3000/api/channel/${cat_id}"));
        CategoryChild  categoryChild= CategoryChild.fromJson(jsonDecode(result.body));
        return categoryChild;
      }
      catch(ex){
        throw ex;
      }
   }
}
