// To parse this JSON data, do
//
//     final detail = detailFromJson(jsonString);

import 'dart:convert';


class Detail {
  SizeTemplate? sizeTemplate;
  String? stock;
  int? isMultiPartProduct;
  List<dynamic>? multiPartInfo;
  int? mainSaleAttrShowMode;
  List<MainSaleAttribute>? productDetails;
  List<MainSaleAttribute>? mainSaleAttribute;
  Comment? comment;
  List<PromotionInfo>? promotionInfo;
  dynamic promotion;
  String? productRelationId;
  Price? retailPrice;
  Price? salePrice;
  List<dynamic>? appPromotion;
  bool? beautyCategory;
  String? goodsId;
  String? catId;
  String? goodsSn;
  String? goodsUrlName;
  String? goodsName;
  String? originalImg;
  String? goodsThumb;
  String? goodsImg;
  String? goodsDesc;
  String? parentId;
  String? isOnSale;
  String? isSubscription;
  String? colorImage;
  int? storeCode;
  int? businessModel;
  String? unitDiscount;
  List<MallInfo>? mallInfo;
  List<MallPrice>? mallPrices;
  List<MallStock>? mallStock;
  Mall? mall;
  String? ssrAbtKey;
  BrandInfo? brandInfo;
  Series? series;
  String? blackFridayImg;
  Map<String, ContentLabel>? contentLabel;

  Detail({
    this.sizeTemplate,
    this.stock,
    this.isMultiPartProduct,
    this.multiPartInfo,
    this.mainSaleAttrShowMode,
    this.productDetails,
    this.mainSaleAttribute,
    this.comment,
    this.promotionInfo,
    this.promotion,
    this.productRelationId,
    this.retailPrice,
    this.salePrice,
    this.appPromotion,
    this.beautyCategory,
    this.goodsId,
    this.catId,
    this.goodsSn,
    this.goodsUrlName,
    this.goodsName,
    this.originalImg,
    this.goodsThumb,
    this.goodsImg,
    this.goodsDesc,
    this.parentId,
    this.isOnSale,
    this.isSubscription,
    this.colorImage,
    this.storeCode,
    this.businessModel,
    this.unitDiscount,
    this.mallInfo,
    this.mallPrices,
    this.mallStock,
    this.mall,
    this.ssrAbtKey,
    this.brandInfo,
    this.series,
    this.blackFridayImg,
    this.contentLabel,
  });

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
    sizeTemplate: json["sizeTemplate"] == null ? null : SizeTemplate.fromJson(json["sizeTemplate"]),
    stock: json["stock"],
    isMultiPartProduct: json["isMultiPartProduct"],
    multiPartInfo: json["multiPartInfo"] == null ? [] : List<dynamic>.from(json["multiPartInfo"]!.map((x) => x)),
    mainSaleAttrShowMode: json["mainSaleAttrShowMode"],
    productDetails: json["productDetails"] == null ? [] : List<MainSaleAttribute>.from(json["productDetails"]!.map((x) => MainSaleAttribute.fromJson(x))),
    mainSaleAttribute: json["mainSaleAttribute"] == null ? [] : List<MainSaleAttribute>.from(json["mainSaleAttribute"]!.map((x) => MainSaleAttribute.fromJson(x))),
    comment: json["comment"] == null ? null : Comment.fromJson(json["comment"]),
    promotionInfo: json["promotionInfo"] == null ? [] : List<PromotionInfo>.from(json["promotionInfo"]!.map((x) => PromotionInfo.fromJson(x))),
    promotion: json["promotion"],
    productRelationId: json["productRelationID"],
    retailPrice: json["retailPrice"] == null ? null : Price.fromJson(json["retailPrice"]),
    salePrice: json["salePrice"] == null ? null : Price.fromJson(json["salePrice"]),
    appPromotion: json["appPromotion"] == null ? [] : List<dynamic>.from(json["appPromotion"]!.map((x) => x)),
    beautyCategory: json["beautyCategory"],
    goodsId: json["goods_id"],
    catId: json["cat_id"],
    goodsSn: json["goods_sn"],
    goodsUrlName: json["goods_url_name"],
    goodsName: json["goods_name"],
    originalImg: json["original_img"],
    goodsThumb: json["goods_thumb"],
    goodsImg: json["goods_img"],
    goodsDesc: json["goods_desc"],
    parentId: json["parent_id"],
    isOnSale: json["is_on_sale"],
    isSubscription: json["is_subscription"],
    colorImage: json["color_image"],
    storeCode: json["store_code"],
    businessModel: json["business_model"],
    unitDiscount: json["unit_discount"],
    mallInfo: json["mall_info"] == null ? [] : List<MallInfo>.from(json["mall_info"]!.map((x) => MallInfo.fromJson(x))),
    mallPrices: json["mall_prices"] == null ? [] : List<MallPrice>.from(json["mall_prices"]!.map((x) => MallPrice.fromJson(x))),
    mallStock: json["mall_stock"] == null ? [] : List<MallStock>.from(json["mall_stock"]!.map((x) => MallStock.fromJson(x))),
    mall: json["mall"] == null ? null : Mall.fromJson(json["mall"]),
    ssrAbtKey: json["ssrAbtKey"],
    brandInfo: json["brandInfo"] == null ? null : BrandInfo.fromJson(json["brandInfo"]),
    series: json["series"] == null ? null : Series.fromJson(json["series"]),
    blackFridayImg: json["blackFridayImg"],
    contentLabel: Map.from(json["contentLabel"]!).map((k, v) => MapEntry<String, ContentLabel>(k, ContentLabel.fromJson(v))),
  );

  Map<String, dynamic> toJson() => {
    "sizeTemplate": sizeTemplate?.toJson(),
    "stock": stock,
    "isMultiPartProduct": isMultiPartProduct,
    "multiPartInfo": multiPartInfo == null ? [] : List<dynamic>.from(multiPartInfo!.map((x) => x)),
    "mainSaleAttrShowMode": mainSaleAttrShowMode,
    "productDetails": productDetails == null ? [] : List<dynamic>.from(productDetails!.map((x) => x.toJson())),
    "mainSaleAttribute": mainSaleAttribute == null ? [] : List<dynamic>.from(mainSaleAttribute!.map((x) => x.toJson())),
    "comment": comment?.toJson(),
    "promotionInfo": promotionInfo == null ? [] : List<dynamic>.from(promotionInfo!.map((x) => x.toJson())),
    "promotion": promotion,
    "productRelationID": productRelationId,
    "retailPrice": retailPrice?.toJson(),
    "salePrice": salePrice?.toJson(),
    "appPromotion": appPromotion == null ? [] : List<dynamic>.from(appPromotion!.map((x) => x)),
    "beautyCategory": beautyCategory,
    "goods_id": goodsId,
    "cat_id": catId,
    "goods_sn": goodsSn,
    "goods_url_name": goodsUrlName,
    "goods_name": goodsName,
    "original_img": originalImg,
    "goods_thumb": goodsThumb,
    "goods_img": goodsImg,
    "goods_desc": goodsDesc,
    "parent_id": parentId,
    "is_on_sale": isOnSale,
    "is_subscription": isSubscription,
    "color_image": colorImage,
    "store_code": storeCode,
    "business_model": businessModel,
    "unit_discount": unitDiscount,
    "mall_info": mallInfo == null ? [] : List<dynamic>.from(mallInfo!.map((x) => x.toJson())),
    "mall_prices": mallPrices == null ? [] : List<dynamic>.from(mallPrices!.map((x) => x.toJson())),
    "mall_stock": mallStock == null ? [] : List<dynamic>.from(mallStock!.map((x) => x.toJson())),
    "mall": mall?.toJson(),
    "ssrAbtKey": ssrAbtKey,
    "brandInfo": brandInfo?.toJson(),
    "series": series?.toJson(),
    "blackFridayImg": blackFridayImg,
    "contentLabel": Map.from(contentLabel!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
  };
}

class BrandInfo {
  int? id;
  String? name;
  dynamic cornerImgLeft;
  dynamic cornerImgRight;
  String? brandLogo;
  String? mainSite;
  String? brandCode;

  BrandInfo({
    this.id,
    this.name,
    this.cornerImgLeft,
    this.cornerImgRight,
    this.brandLogo,
    this.mainSite,
    this.brandCode,
  });

  factory BrandInfo.fromJson(Map<String, dynamic> json) => BrandInfo(
    id: json["id"],
    name: json["name"],
    cornerImgLeft: json["corner_img_left"],
    cornerImgRight: json["corner_img_right"],
    brandLogo: json["brand_logo"],
    mainSite: json["main_site"],
    brandCode: json["brand_code"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "corner_img_left": cornerImgLeft,
    "corner_img_right": cornerImgRight,
    "brand_logo": brandLogo,
    "main_site": mainSite,
    "brand_code": brandCode,
  };
}

class Comment {
  String? commentNum;
  String? commentRank;

  Comment({
    this.commentNum,
    this.commentRank,
  });

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
    commentNum: json["comment_num"],
    commentRank: json["comment_rank"],
  );

  Map<String, dynamic> toJson() => {
    "comment_num": commentNum,
    "comment_rank": commentRank,
  };
}

class ContentLabel {
  int? id;
  int? labelType;
  int? isOpen;
  int? parentId;
  String? languageName;
  String? nameEn;
  int? optionScore;

  ContentLabel({
    this.id,
    this.labelType,
    this.isOpen,
    this.parentId,
    this.languageName,
    this.nameEn,
    this.optionScore,
  });

  factory ContentLabel.fromJson(Map<String, dynamic> json) => ContentLabel(
    id: json["id"],
    labelType: json["label_type"],
    isOpen: json["is_open"],
    parentId: json["parent_id"],
    languageName: json["language_name"],
    nameEn: json["name_en"],
    optionScore: json["option_score"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "label_type": labelType,
    "is_open": isOpen,
    "parent_id": parentId,
    "language_name": languageName,
    "name_en": nameEn,
    "option_score": optionScore,
  };
}

class MainSaleAttribute {
  int? attrId;
  String? attrValueId;
  String? attrName;
  String? attrNameEn;
  int? valueSort;
  int? attrSelect;
  int? attrSort;
  int? leftShow;
  String? attrValue;
  String? attrValueEn;
  String? attrDesc;
  String? attrImage;

  MainSaleAttribute({
    this.attrId,
    this.attrValueId,
    this.attrName,
    this.attrNameEn,
    this.valueSort,
    this.attrSelect,
    this.attrSort,
    this.leftShow,
    this.attrValue,
    this.attrValueEn,
    this.attrDesc,
    this.attrImage,
  });

  factory MainSaleAttribute.fromJson(Map<String, dynamic> json) => MainSaleAttribute(
    attrId: json["attr_id"],
    attrValueId: json["attr_value_id"],
    attrName: json["attr_name"],
    attrNameEn: json["attr_name_en"],
    valueSort: json["value_sort"],
    attrSelect: json["attr_select"],
    attrSort: json["attr_sort"],
    leftShow: json["left_show"],
    attrValue: json["attr_value"],
    attrValueEn: json["attr_value_en"],
    attrDesc: json["attr_desc"],
    attrImage: json["attr_image"],
  );

  Map<String, dynamic> toJson() => {
    "attr_id": attrId,
    "attr_value_id": attrValueId,
    "attr_name": attrName,
    "attr_name_en": attrNameEn,
    "value_sort": valueSort,
    "attr_select": attrSelect,
    "attr_sort": attrSort,
    "left_show": leftShow,
    "attr_value": attrValue,
    "attr_value_en": attrValueEn,
    "attr_desc": attrDesc,
    "attr_image": attrImage,
  };
}

class Mall {
  The1? the1;

  Mall({
    this.the1,
  });

  factory Mall.fromJson(Map<String, dynamic> json) => Mall(
    the1: json["1"] == null ? null : The1.fromJson(json["1"]),
  );

  Map<String, dynamic> toJson() => {
    "1": the1?.toJson(),
  };
}

class The1 {
  int? enableFlag;
  String? mallCode;
  String? mallName;
  int? mallSort;
  String? mallTags;
  String? languageMallName;
  int? showFlag;
  int? mallCodeSort;
  Price? retailPrice;
  Price? salePrice;
  int? unitDiscount;
  dynamic promotionStatus;
  dynamic promotionLogoType;
  String? originalDiscount;
  Price? discountPrice;
  List<dynamic>? couponPrices;
  Price? showPrice;
  Price? vipDiscountPrice;
  dynamic suitRulePrice;
  dynamic ruleNum;
  String? discountValue;
  int? isInsurable;
  dynamic promotionDiscountInfo;
  List<dynamic>? coupons;
  int? stock;
  bool? skcQuickShip;
  List<PromotionInfo>? promotionInfo;
  List<dynamic>? appPromotion;

  The1({
    this.enableFlag,
    this.mallCode,
    this.mallName,
    this.mallSort,
    this.mallTags,
    this.languageMallName,
    this.showFlag,
    this.mallCodeSort,
    this.retailPrice,
    this.salePrice,
    this.unitDiscount,
    this.promotionStatus,
    this.promotionLogoType,
    this.originalDiscount,
    this.discountPrice,
    this.couponPrices,
    this.showPrice,
    this.vipDiscountPrice,
    this.suitRulePrice,
    this.ruleNum,
    this.discountValue,
    this.isInsurable,
    this.promotionDiscountInfo,
    this.coupons,
    this.stock,
    this.skcQuickShip,
    this.promotionInfo,
    this.appPromotion,
  });

  factory The1.fromJson(Map<String, dynamic> json) => The1(
    enableFlag: json["enable_flag"],
    mallCode: json["mall_code"],
    mallName: json["mall_name"],
    mallSort: json["mall_sort"],
    mallTags: json["mall_tags"],
    languageMallName: json["language_mall_name"],
    showFlag: json["show_flag"],
    mallCodeSort: json["mall_code_sort"],
    retailPrice: json["retailPrice"] == null ? null : Price.fromJson(json["retailPrice"]),
    salePrice: json["salePrice"] == null ? null : Price.fromJson(json["salePrice"]),
    unitDiscount: json["unit_discount"],
    promotionStatus: json["promotion_status"],
    promotionLogoType: json["promotion_logo_type"],
    originalDiscount: json["original_discount"],
    discountPrice: json["discountPrice"] == null ? null : Price.fromJson(json["discountPrice"]),
    couponPrices: json["coupon_prices"] == null ? [] : List<dynamic>.from(json["coupon_prices"]!.map((x) => x)),
    showPrice: json["showPrice"] == null ? null : Price.fromJson(json["showPrice"]),
    vipDiscountPrice: json["vipDiscountPrice"] == null ? null : Price.fromJson(json["vipDiscountPrice"]),
    suitRulePrice: json["suitRulePrice"],
    ruleNum: json["rule_num"],
    discountValue: json["discountValue"],
    isInsurable: json["isInsurable"],
    promotionDiscountInfo: json["promotion_discount_info"],
    coupons: json["coupons"] == null ? [] : List<dynamic>.from(json["coupons"]!.map((x) => x)),
    stock: json["stock"],
    skcQuickShip: json["skcQuickShip"],
    promotionInfo: json["promotionInfo"] == null ? [] : List<PromotionInfo>.from(json["promotionInfo"]!.map((x) => PromotionInfo.fromJson(x))),
    appPromotion: json["appPromotion"] == null ? [] : List<dynamic>.from(json["appPromotion"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "enable_flag": enableFlag,
    "mall_code": mallCode,
    "mall_name": mallName,
    "mall_sort": mallSort,
    "mall_tags": mallTags,
    "language_mall_name": languageMallName,
    "show_flag": showFlag,
    "mall_code_sort": mallCodeSort,
    "retailPrice": retailPrice?.toJson(),
    "salePrice": salePrice?.toJson(),
    "unit_discount": unitDiscount,
    "promotion_status": promotionStatus,
    "promotion_logo_type": promotionLogoType,
    "original_discount": originalDiscount,
    "discountPrice": discountPrice?.toJson(),
    "coupon_prices": couponPrices == null ? [] : List<dynamic>.from(couponPrices!.map((x) => x)),
    "showPrice": showPrice?.toJson(),
    "vipDiscountPrice": vipDiscountPrice?.toJson(),
    "suitRulePrice": suitRulePrice,
    "rule_num": ruleNum,
    "discountValue": discountValue,
    "isInsurable": isInsurable,
    "promotion_discount_info": promotionDiscountInfo,
    "coupons": coupons == null ? [] : List<dynamic>.from(coupons!.map((x) => x)),
    "stock": stock,
    "skcQuickShip": skcQuickShip,
    "promotionInfo": promotionInfo == null ? [] : List<dynamic>.from(promotionInfo!.map((x) => x.toJson())),
    "appPromotion": appPromotion == null ? [] : List<dynamic>.from(appPromotion!.map((x) => x)),
  };
}

class Price {
  String? amount;
  String? amountWithSymbol;
  String? usdAmount;
  String? usdAmountWithSymbol;

  Price({
    this.amount,
    this.amountWithSymbol,
    this.usdAmount,
    this.usdAmountWithSymbol,
  });

  factory Price.fromJson(Map<String, dynamic> json) => Price(
    amount: json["amount"],
    amountWithSymbol: json["amountWithSymbol"],
    usdAmount: json["usdAmount"],
    usdAmountWithSymbol: json["usdAmountWithSymbol"],
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "amountWithSymbol": amountWithSymbol,
    "usdAmount": usdAmount,
    "usdAmountWithSymbol": usdAmountWithSymbol,
  };
}

class PromotionInfo {
  String? id;
  String? typeId;
  String? isReturn;
  String? scId;
  String? endTimestamp;
  String? mallCode;
  String? singleNum;

  PromotionInfo({
    this.id,
    this.typeId,
    this.isReturn,
    this.scId,
    this.endTimestamp,
    this.mallCode,
    this.singleNum,
  });

  factory PromotionInfo.fromJson(Map<String, dynamic> json) => PromotionInfo(
    id: json["id"],
    typeId: json["typeId"],
    isReturn: json["isReturn"],
    scId: json["scId"],
    endTimestamp: json["endTimestamp"],
    mallCode: json["mall_code"],
    singleNum: json["singleNum"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "typeId": typeId,
    "isReturn": isReturn,
    "scId": scId,
    "endTimestamp": endTimestamp,
    "mall_code": mallCode,
    "singleNum": singleNum,
  };
}

class MallInfo {
  String? mallCode;
  String? mallName;
  int? mallSort;
  int? mallCodeSort;

  MallInfo({
    this.mallCode,
    this.mallName,
    this.mallSort,
    this.mallCodeSort,
  });

  factory MallInfo.fromJson(Map<String, dynamic> json) => MallInfo(
    mallCode: json["mall_code"],
    mallName: json["mall_name"],
    mallSort: json["mall_sort"],
    mallCodeSort: json["mall_code_sort"],
  );

  Map<String, dynamic> toJson() => {
    "mall_code": mallCode,
    "mall_name": mallName,
    "mall_sort": mallSort,
    "mall_code_sort": mallCodeSort,
  };
}

class MallPrice {
  String? mallCode;
  Price? retailPrice;
  Price? salePrice;
  int? unitDiscount;
  dynamic promotionStatus;
  dynamic promotionLogoType;
  dynamic couponPrices;

  MallPrice({
    this.mallCode,
    this.retailPrice,
    this.salePrice,
    this.unitDiscount,
    this.promotionStatus,
    this.promotionLogoType,
    this.couponPrices,
  });

  factory MallPrice.fromJson(Map<String, dynamic> json) => MallPrice(
    mallCode: json["mall_code"],
    retailPrice: json["retailPrice"] == null ? null : Price.fromJson(json["retailPrice"]),
    salePrice: json["salePrice"] == null ? null : Price.fromJson(json["salePrice"]),
    unitDiscount: json["unit_discount"],
    promotionStatus: json["promotion_status"],
    promotionLogoType: json["promotion_logo_type"],
    couponPrices: json["coupon_prices"],
  );

  Map<String, dynamic> toJson() => {
    "mall_code": mallCode,
    "retailPrice": retailPrice?.toJson(),
    "salePrice": salePrice?.toJson(),
    "unit_discount": unitDiscount,
    "promotion_status": promotionStatus,
    "promotion_logo_type": promotionLogoType,
    "coupon_prices": couponPrices,
  };
}

class MallStock {
  int? stock;
  bool? skcQuickShip;
  String? mallCode;

  MallStock({
    this.stock,
    this.skcQuickShip,
    this.mallCode,
  });

  factory MallStock.fromJson(Map<String, dynamic> json) => MallStock(
    stock: json["stock"],
    skcQuickShip: json["skcQuickShip"],
    mallCode: json["mall_code"],
  );

  Map<String, dynamic> toJson() => {
    "stock": stock,
    "skcQuickShip": skcQuickShip,
    "mall_code": mallCode,
  };
}

class Series {
  int? id;
  String? name;
  String? imageUrl;
  String? cornerImgLeft;
  String? cornerImgRight;
  dynamic cornerImgLightLeft;
  dynamic cornerImgLightRight;
  String? mainSite;
  dynamic logoShowPosition;
  int? seriesType;
  int? productRecommendByGroup;
  int? seriesGroupId;

  Series({
    this.id,
    this.name,
    this.imageUrl,
    this.cornerImgLeft,
    this.cornerImgRight,
    this.cornerImgLightLeft,
    this.cornerImgLightRight,
    this.mainSite,
    this.logoShowPosition,
    this.seriesType,
    this.productRecommendByGroup,
    this.seriesGroupId,
  });

  factory Series.fromJson(Map<String, dynamic> json) => Series(
    id: json["id"],
    name: json["name"],
    imageUrl: json["image_url"],
    cornerImgLeft: json["corner_img_left"],
    cornerImgRight: json["corner_img_right"],
    cornerImgLightLeft: json["corner_img_light_left"],
    cornerImgLightRight: json["corner_img_light_right"],
    mainSite: json["main_site"],
    logoShowPosition: json["logo_show_position"],
    seriesType: json["series_type"],
    productRecommendByGroup: json["product_recommend_by_group"],
    seriesGroupId: json["series_group_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image_url": imageUrl,
    "corner_img_left": cornerImgLeft,
    "corner_img_right": cornerImgRight,
    "corner_img_light_left": cornerImgLightLeft,
    "corner_img_light_right": cornerImgLightRight,
    "main_site": mainSite,
    "logo_show_position": logoShowPosition,
    "series_type": seriesType,
    "product_recommend_by_group": productRecommendByGroup,
    "series_group_id": seriesGroupId,
  };
}

class SizeTemplate {
  String? imageUrl;
  List<DescriptionMulti>? descriptionMulti;

  SizeTemplate({
    this.imageUrl,
    this.descriptionMulti,
  });

  factory SizeTemplate.fromJson(Map<String, dynamic> json) => SizeTemplate(
    imageUrl: json["image_url"],
    descriptionMulti: json["description_multi"] == null ? [] : List<DescriptionMulti>.from(json["description_multi"]!.map((x) => DescriptionMulti.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "image_url": imageUrl,
    "description_multi": descriptionMulti == null ? [] : List<dynamic>.from(descriptionMulti!.map((x) => x.toJson())),
  };
}

class DescriptionMulti {
  int? sort;
  String? name;
  String? description;

  DescriptionMulti({
    this.sort,
    this.name,
    this.description,
  });

  factory DescriptionMulti.fromJson(Map<String, dynamic> json) => DescriptionMulti(
    sort: json["sort"],
    name: json["name"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "sort": sort,
    "name": name,
    "description": description,
  };
}
