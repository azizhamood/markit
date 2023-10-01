// To parse this JSON data, do
//
//     final sizeInfoDes = sizeInfoDesFromJson(jsonString);

import 'dart:convert';



class SizeInfoDes {
  int? multiPartFlag;
  List<dynamic>? multiPartInfo;
  List<SizeInfo>? sizeInfo;
  List<SizeInfo>? sizeInfoInch;
  List<DimensionAttrInfo>? dimensionAttrInfo;
  int? sizeUnit;
  int? allcmFlag;
  List<dynamic>? sizeInfoAttribute;
  BasicAttribute? basicAttribute;
  List<dynamic>? braRecommendSize;

  SizeInfoDes({
    this.multiPartFlag,
    this.multiPartInfo,
    this.sizeInfo,
    this.sizeInfoInch,
    this.dimensionAttrInfo,
    this.sizeUnit,
    this.allcmFlag,
    this.sizeInfoAttribute,
    this.basicAttribute,
    this.braRecommendSize,
  });

  factory SizeInfoDes.fromJson(Map<String, dynamic> json) => SizeInfoDes(
    multiPartFlag: json["multiPartFlag"],
    multiPartInfo: json["multiPartInfo"] == null ? [] : List<dynamic>.from(json["multiPartInfo"]!.map((x) => x)),
    sizeInfo: json["sizeInfo"] == null ? [] : List<SizeInfo>.from(json["sizeInfo"]!.map((x) => SizeInfo.fromJson(x))),
    sizeInfoInch: json["sizeInfoInch"] == null ? [] : List<SizeInfo>.from(json["sizeInfoInch"]!.map((x) => SizeInfo.fromJson(x))),
    dimensionAttrInfo: json["dimensionAttrInfo"] == null ? [] : List<DimensionAttrInfo>.from(json["dimensionAttrInfo"]!.map((x) => DimensionAttrInfo.fromJson(x))),
    sizeUnit: json["sizeUnit"],
    allcmFlag: json["allcmFlag"],
    sizeInfoAttribute: json["sizeInfoAttribute"] == null ? [] : List<dynamic>.from(json["sizeInfoAttribute"]!.map((x) => x)),
    basicAttribute: json["basicAttribute"] == null ? null : BasicAttribute.fromJson(json["basicAttribute"]),
    braRecommendSize: json["braRecommendSize"] == null ? [] : List<dynamic>.from(json["braRecommendSize"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "multiPartFlag": multiPartFlag,
    "multiPartInfo": multiPartInfo == null ? [] : List<dynamic>.from(multiPartInfo!.map((x) => x)),
    "sizeInfo": sizeInfo == null ? [] : List<dynamic>.from(sizeInfo!.map((x) => x.toJson())),
    "sizeInfoInch": sizeInfoInch == null ? [] : List<dynamic>.from(sizeInfoInch!.map((x) => x.toJson())),
    "dimensionAttrInfo": dimensionAttrInfo == null ? [] : List<dynamic>.from(dimensionAttrInfo!.map((x) => x.toJson())),
    "sizeUnit": sizeUnit,
    "allcmFlag": allcmFlag,
    "sizeInfoAttribute": sizeInfoAttribute == null ? [] : List<dynamic>.from(sizeInfoAttribute!.map((x) => x)),
    "basicAttribute": basicAttribute?.toJson(),
    "braRecommendSize": braRecommendSize == null ? [] : List<dynamic>.from(braRecommendSize!.map((x) => x)),
  };
}

class BasicAttribute {
  String? imageUrl;
  List<AttributeInfo>? attributeInfo;
  List<BaseCodeInfo>? baseCodeInfo;
  List<BaseCodeInfo>? baseCodeInfoInch;
  List<dynamic>? baseCodeInfoOther;
  BaseSizeSort? baseSizeSort;
  Map<String, int>? baseAttrSort;
  int? baseCodeShowMode;

  BasicAttribute({
    this.imageUrl,
    this.attributeInfo,
    this.baseCodeInfo,
    this.baseCodeInfoInch,
    this.baseCodeInfoOther,
    this.baseSizeSort,
    this.baseAttrSort,
    this.baseCodeShowMode,
  });

  factory BasicAttribute.fromJson(Map<String, dynamic> json) => BasicAttribute(
    imageUrl: json["image_url"],
    attributeInfo: json["attribute_info"] == null ? [] : List<AttributeInfo>.from(json["attribute_info"]!.map((x) => AttributeInfo.fromJson(x))),
    baseCodeInfo: json["base_code_info"] == null ? [] : List<BaseCodeInfo>.from(json["base_code_info"]!.map((x) => BaseCodeInfo.fromJson(x))),
    baseCodeInfoInch: json["base_code_info_inch"] == null ? [] : List<BaseCodeInfo>.from(json["base_code_info_inch"]!.map((x) => BaseCodeInfo.fromJson(x))),
    baseCodeInfoOther: json["base_code_info_other"] == null ? [] : List<dynamic>.from(json["base_code_info_other"]!.map((x) => x)),
    baseSizeSort: json["base_size_sort"] == null ? null : BaseSizeSort.fromJson(json["base_size_sort"]),
    baseAttrSort: Map.from(json["base_attr_sort"]!).map((k, v) => MapEntry<String, int>(k, v)),
    baseCodeShowMode: json["base_code_show_mode"],
  );

  Map<String, dynamic> toJson() => {
    "image_url": imageUrl,
    "attribute_info": attributeInfo == null ? [] : List<dynamic>.from(attributeInfo!.map((x) => x.toJson())),
    "base_code_info": baseCodeInfo == null ? [] : List<dynamic>.from(baseCodeInfo!.map((x) => x.toJson())),
    "base_code_info_inch": baseCodeInfoInch == null ? [] : List<dynamic>.from(baseCodeInfoInch!.map((x) => x.toJson())),
    "base_code_info_other": baseCodeInfoOther == null ? [] : List<dynamic>.from(baseCodeInfoOther!.map((x) => x)),
    "base_size_sort": baseSizeSort?.toJson(),
    "base_attr_sort": Map.from(baseAttrSort!).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "base_code_show_mode": baseCodeShowMode,
  };
}

class AttributeInfo {
  String? name;
  int? sort;
  String? desc;

  AttributeInfo({
    this.name,
    this.sort,
    this.desc,
  });

  factory AttributeInfo.fromJson(Map<String, dynamic> json) => AttributeInfo(
    name: json["name"],
    sort: json["sort"],
    desc: json["desc"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "sort": sort,
    "desc": desc,
  };
}

class BaseCodeInfo {
  String? size;
  String? purple;
  String? baseCodeInfo;
  String? empty;

  BaseCodeInfo({
    this.size,
    this.purple,
    this.baseCodeInfo,
    this.empty,
  });

  factory BaseCodeInfo.fromJson(Map<String, dynamic> json) => BaseCodeInfo(
    size: json["size"],
    purple: json["قياس الصدر"],
    baseCodeInfo: json["قياس الخصر"],
    empty: json["حجم الورك"],
  );

  Map<String, dynamic> toJson() => {
    "size": size,
    "قياس الصدر": purple,
    "قياس الخصر": baseCodeInfo,
    "حجم الورك": empty,
  };
}

class BaseSizeSort {
  int? s;
  int? xs;
  int? l;
  int? m;

  BaseSizeSort({
    this.s,
    this.xs,
    this.l,
    this.m,
  });

  factory BaseSizeSort.fromJson(Map<String, dynamic> json) => BaseSizeSort(
    s: json["S"],
    xs: json["XS"],
    l: json["L"],
    m: json["M"],
  );

  Map<String, dynamic> toJson() => {
    "S": s,
    "XS": xs,
    "L": l,
    "M": m,
  };
}

class DimensionAttrInfo {
  int? attrId;
  String? attrName;
  String? attrNameEn;

  DimensionAttrInfo({
    this.attrId,
    this.attrName,
    this.attrNameEn,
  });

  factory DimensionAttrInfo.fromJson(Map<String, dynamic> json) => DimensionAttrInfo(
    attrId: json["attr_id"],
    attrName: json["attr_name"],
    attrNameEn: json["attr_name_en"],
  );

  Map<String, dynamic> toJson() => {
    "attr_id": attrId,
    "attr_name": attrName,
    "attr_name_en": attrNameEn,
  };
}

class SizeInfo {
  int? attrId;
  String? attrName;
  int? attrValueId;
  String? attrValueName;
  String? attrValueNameEn;
  String? fluffy;
  String? sticky;
  String? empty;
  String? sizeInfo;
  String? tentacled;
  String? indigo;
  String? purple;

  SizeInfo({
    this.attrId,
    this.attrName,
    this.attrValueId,
    this.attrValueName,
    this.attrValueNameEn,
    this.fluffy,
    this.sticky,
    this.empty,
    this.sizeInfo,
    this.tentacled,
    this.indigo,
    this.purple,
  });

  factory SizeInfo.fromJson(Map<String, dynamic> json) => SizeInfo(
    attrId: json["attr_id"],
    attrName: json["attr_name"],
    attrValueId: json["attr_value_id"],
    attrValueName: json["attr_value_name"],
    attrValueNameEn: json["attr_value_name_en"],
    fluffy: json["قياس الخصر "],
    sticky: json["كتف "],
    empty: json["الطول "],
    sizeInfo: json["طول الأكمام "],
    tentacled: json["قياس الصدر "],
    indigo: json["كفة "],
    purple: json["طول الذراع "],
  );

  Map<String, dynamic> toJson() => {
    "attr_id": attrId,
    "attr_name": attrName,
    "attr_value_id": attrValueId,
    "attr_value_name": attrValueName,
    "attr_value_name_en": attrValueNameEn,
    "قياس الخصر ": fluffy,
    "كتف ": sticky,
    "الطول ": empty,
    "طول الأكمام ": sizeInfo,
    "قياس الصدر ": tentacled,
    "كفة ": indigo,
    "طول الذراع ": purple,
  };
}
