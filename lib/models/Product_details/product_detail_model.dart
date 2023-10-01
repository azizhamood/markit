import 'package:markit/models/Product_details/sizeInfoDes.dart';
import 'detail.dart';

class ProductDetail{
  Detail?  detail;
  SizeInfoDes? sizeInfoDes;

  ProductDetail({this.detail, this.sizeInfoDes});
  factory ProductDetail.fromJson(Map<String, dynamic> json) => ProductDetail(
          detail: Detail.fromJson(json["detail"]),
          sizeInfoDes:SizeInfoDes.fromJson(json["sizeInfoDes"])
  );
}