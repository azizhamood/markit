import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:markit/models/Product_details/product_detail_model.dart';
import 'package:markit/models/goods.dart';
import 'package:markit/views/Product/model/product_list.dart';

import '../../../models/response_model.dart';
class ProductRepository {

  Future<ProductList> getProductList(String routeId) async {
    try {
      var result = await http.get(Uri.parse(
          "http://10.0.2.2:3000/api/productList/${routeId}"));
      ResponseModel<Map<String,dynamic>> responseModel =  ResponseModel<Map<String,dynamic>>().fromJson(jsonDecode(result.body));
       ProductList  list= ProductList.fromJson(responseModel.content!);
      //list.goods= (responseModel.content!.goods as List).map((e) =>  Good.fromJson(e)).toList();

      return list;
    } catch (ex) {
      throw ex;
    }
  }

  Future<ProductDetail?> getProductDetail(String id) async{

    try {
      var result = await http.get(Uri.parse(
          "https://m.shein.com/ar/api/productInfo/productDetail/get?currency=SAR&fromSpa=1&goods_id=18331511"));
      ProductDetail? productDetail = ProductDetail.fromJson(
          jsonDecode(result.body));
      return productDetail;
    }
    catch(ex){
      throw ex;
    }

  }

}