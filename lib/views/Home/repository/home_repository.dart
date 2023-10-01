
import 'dart:convert';

import '../../../models/goods.dart';
import 'package:http/http.dart' as http;

import '../../../models/response_model.dart';
class HomeRepository {

  Future<List<Good>?> getGoods() async{
    try {
      var result = await http.get(Uri.parse(
          "http://10.0.2.2:3000/api/informationFlow"));
      ResponseModel<List<dynamic>> responseModel =  ResponseModel<List<dynamic>>().fromJson(jsonDecode(result.body));

      List<Good>? list= <Good>[];
      list= (responseModel.content as List).map((e) =>  Good.fromJson(e)).toList();

      return list;
    }catch(ex){
      throw ex;
    }

  }

}