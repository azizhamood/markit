
class CategoryTab  {
   String? id;
   String? name="";
   CategoryTab({this.id, this.name});

   CategoryTab.formJson(Map<String,dynamic> map){
         id:map["id"];
         name: map["name"];

   }
}