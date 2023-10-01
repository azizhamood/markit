import '../../../models/goods.dart';

class ProductList {
   List<Good>? goods;
   ProductList({this.goods});
   ProductList.fromJson(Map<String,dynamic> map){
      if(map["goods"]!=null){
         goods=<Good>[];
         map["goods"].forEach((v)=>{
            goods!.add(Good.fromJson(v))
         });
      }
   }
}




