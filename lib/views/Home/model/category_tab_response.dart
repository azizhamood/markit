import '../../../models/categoryTab.dart';
import '../../../models/response_model.dart';

class CategoryTabResponse  {
  int? code;
  String? message;
  List<CategoryTab>? content ;
  CategoryTabResponse({this.code, this.message, this.content});
  CategoryTabResponse.fromJson(Map<String,dynamic> map){
       code=map["code"];
       message=map["message"];
       if(map['content']!=null){
         content=<CategoryTab>[];
         map['content'].forEach((v){
           content!.add(new CategoryTab.formJson(v));
         });
      }
  }
}