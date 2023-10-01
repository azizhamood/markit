// class Good {
//   String? goods_sn;
//   String? goods_name;
//   String? goods_img;
//   Good({ this.goods_sn, this.goods_name, this.goods_img});
//
//   Good.fromJson(Map<String,dynamic> map){
//      goods_sn=map["goods_sn"];
//      goods_name=map["goods_name"];
//      goods_img=map["goods_img"];
//   }
// }

import 'dart:convert';


// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';




class Good {
  String? quickship;
  //Brand? brand;
  //List<TemperaturesRelatedColor>? relatedColor;
  String? goodsId;
  String? goodsSn;
  String? mallCode;
  String? catId;
  String? parentId;
  //Ext? ext;
  //TemperaturesDynamicExt? dynamicExt;
  String? goodsName;
  String? storeCode;
  String? goodsUrlName;
  String? goodsImg;
 // List<dynamic>? spuImage;
  String? isOnSale;
  String? isShowPlusSize;
  //List<String>? detailImage;
  String? productRelationId;
 // List<dynamic>? testImageInfoList;
  //CccFeedback? cccFeedback;
  dynamic series;
  //List<TagResult>? tagResult;
  //RetailPrice? retailPrice;
  //RetailPrice? salePrice;
  String? unitDiscount;
  dynamic promotionStatus;
  dynamic promotionLogoType;
  String? originalDiscount;
 // List<PromotionInfo>? promotionInfo;
 // List<dynamic>? appPromotion;
 // Badges? badges;
  //List<dynamic>? decisionAttrList;
  //SheinClubPromotionInfo? sheinClubPromotionInfo;
  String? stock;
 // MobileVerticalView? mobileVerticalView;
  //PretreatInfo? pretreatInfo;

  Good({
    this.quickship,
   // this.brand,
    //this.relatedColor,
    this.goodsId,
    this.goodsSn,
    this.mallCode,
    this.catId,
    this.parentId,
    //this.ext,
    //this.dynamicExt,
    this.goodsName,
    this.storeCode,
    this.goodsUrlName,
    this.goodsImg,
    //this.spuImage,
    this.isOnSale,
    this.isShowPlusSize,
    //this.detailImage,
    this.productRelationId,
    //this.testImageInfoList,
    //this.cccFeedback,
    this.series,
   // this.tagResult,
    //this.retailPrice,
    //this.salePrice,
    this.unitDiscount,
    this.promotionStatus,
    this.promotionLogoType,
    this.originalDiscount,
    //this.promotionInfo,
   // this.appPromotion,
    //this.badges,
    //this.decisionAttrList,
    //this.sheinClubPromotionInfo,
    this.stock,
    //this.mobileVerticalView,
    //this.pretreatInfo,
  });

  factory Good.fromJson(Map<String, dynamic> json) => Good(
    quickship: json["quickship"].toString(),
   // brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
    //relatedColor: json["relatedColor"] == null ? [] : List<TemperaturesRelatedColor>.from(json["relatedColor"]!.map((x) => TemperaturesRelatedColor.fromJson(x))),
    goodsId: json["goods_id"].toString(),
    goodsSn: json["goods_sn"].toString(),
    mallCode: json["mall_code"].toString(),
    catId: json["cat_id"].toString(),
    parentId: json["parent_id"].toString(),
    //ext: json["ext"] == null ? null : Ext.fromJson(json["ext"]),
    //dynamicExt: json["dynamic_ext"] == null ? null : TemperaturesDynamicExt.fromJson(json["dynamic_ext"]),
    goodsName: json["goods_name"].toString(),
    storeCode: json["store_code"].toString(),
    goodsUrlName: json["goods_url_name"].toString(),
    goodsImg: json["goods_img"].toString(),
   // spuImage: json["spu_image"] == null ? [] : List<dynamic>.from(json["spu_image"]!.map((x) => x)),
    isOnSale: json["is_on_sale"].toString(),
    isShowPlusSize: json["is_show_plus_size"].toString(),
    //detailImage: json["detail_image"] == null ? [] : List<String>.from(json["detail_image"]!.map((x) => x)),
    productRelationId: json["productRelationID"].toString(),
    //testImageInfoList: json["test_image_info_list"] == null ? [] : List<dynamic>.from(json["test_image_info_list"]!.map((x) => x)),
    //cccFeedback: json["cccFeedback"] == null ? null : CccFeedback.fromJson(json["cccFeedback"]),
    series: json["series"].toString(),
    //tagResult: json["tag_result"] == null ? [] : List<TagResult>.from(json["tag_result"]!.map((x) => TagResult.fromJson(x))),
    //retailPrice: json["retailPrice"] == null ? null : RetailPrice.fromJson(json["retailPrice"]),
    //salePrice: json["salePrice"] == null ? null : RetailPrice.fromJson(json["salePrice"]),
    unitDiscount: json["unit_discount"].toString(),
    promotionStatus: json["promotion_status"].toString(),
    promotionLogoType: json["promotion_logo_type"].toString(),
    originalDiscount: json["original_discount"].toString(),
    //promotionInfo: json["promotionInfo"] == null ? [] : List<PromotionInfo>.from(json["promotionInfo"]!.map((x) => PromotionInfo.fromJson(x))),
   // appPromotion: json["appPromotion"] == null ? [] : List<dynamic>.from(json["appPromotion"]!.map((x) => x)),
    //badges: json["badges"] == null ? null : Badges.fromJson(json["badges"]),
    //decisionAttrList: json["decisionAttrList"] == null ? [] : List<dynamic>.from(json["decisionAttrList"]!.map((x) => x)),
    //sheinClubPromotionInfo: json["sheinClubPromotionInfo"] == null ? null : SheinClubPromotionInfo.fromJson(json["sheinClubPromotionInfo"]),
    stock: json["stock"].toString(),
   // mobileVerticalView: json["mobileVerticalView"] == null ? null : MobileVerticalView.fromJson(json["mobileVerticalView"]),
    //pretreatInfo: json["pretreatInfo"] == null ? null : PretreatInfo.fromJson(json["pretreatInfo"]),
  );

  Map<String, dynamic> toJson() => {
    // "quickship": quickship,
    // "brand": brand?.toJson(),
    // "relatedColor": relatedColor == null ? [] : List<dynamic>.from(relatedColor!.map((x) => x.toJson())),
    // "goods_id": goodsId,
    // "goods_sn": goodsSn,
    // "mall_code": mallCode,
    // "cat_id": catId,
    // "parent_id": parentId,
    // "ext": ext?.toJson(),
    // "dynamic_ext": dynamicExt?.toJson(),
    // "goods_name": goodsName,
    // "store_code": storeCode,
    // "goods_url_name": goodsUrlName,
    // "goods_img": goodsImg,
    // "spu_image": spuImage == null ? [] : List<dynamic>.from(spuImage!.map((x) => x)),
    // "is_on_sale": isOnSale,
    // "is_show_plus_size": isShowPlusSize,
    // "detail_image": detailImage == null ? [] : List<dynamic>.from(detailImage!.map((x) => x)),
    // "productRelationID": productRelationId,
    // "test_image_info_list": testImageInfoList == null ? [] : List<dynamic>.from(testImageInfoList!.map((x) => x)),
    // "cccFeedback": cccFeedback?.toJson(),
    // "series": series,
    // "tag_result": tagResult == null ? [] : List<dynamic>.from(tagResult!.map((x) => x.toJson())),
    // "retailPrice": retailPrice?.toJson(),
    // "salePrice": salePrice?.toJson(),
    // "unit_discount": unitDiscount,
    // "promotion_status": promotionStatus,
    // "promotion_logo_type": promotionLogoType,
    // "original_discount": originalDiscount,
    // "promotionInfo": promotionInfo == null ? [] : List<dynamic>.from(promotionInfo!.map((x) => x.toJson())),
    // "appPromotion": appPromotion == null ? [] : List<dynamic>.from(appPromotion!.map((x) => x)),
    // "badges": badges?.toJson(),
    // "decisionAttrList": decisionAttrList == null ? [] : List<dynamic>.from(decisionAttrList!.map((x) => x)),
    // "sheinClubPromotionInfo": sheinClubPromotionInfo?.toJson(),
    // "stock": stock,
    // "mobileVerticalView": mobileVerticalView?.toJson(),
    // "pretreatInfo": pretreatInfo?.toJson(),
  };
}

class Badges {
  String? sceneKey;
  String? pageKey;

  Badges({
    this.sceneKey,
    this.pageKey,
  });

  factory Badges.fromJson(Map<String, dynamic> json) => Badges(
    sceneKey: json["sceneKey"],
    pageKey: json["pageKey"],
  );

  Map<String, dynamic> toJson() => {
    "sceneKey": sceneKey,
    "pageKey": pageKey,
  };
}

class Brand {
  int? id;
  String? name;
  dynamic cornerImgLeft;
  dynamic cornerImgRight;
  String? brandLogo;
  String? mainSite;
  String? brandCode;

  Brand({
    this.id,
    this.name,
    this.cornerImgLeft,
    this.cornerImgRight,
    this.brandLogo,
    this.mainSite,
    this.brandCode,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
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

class CccFeedback {
  int? effectTime;
  int? endTime;
  List<NegFeedbackInfo>? negFeedbackInfo;
  int? negFeedbackShow;
  String? pageStyleKey;
  String? sceneKey;
  int? similarShow;

  CccFeedback({
    this.effectTime,
    this.endTime,
    this.negFeedbackInfo,
    this.negFeedbackShow,
    this.pageStyleKey,
    this.sceneKey,
    this.similarShow,
  });

  factory CccFeedback.fromJson(Map<String, dynamic> json) => CccFeedback(
    effectTime: json["effectTime"],
    endTime: json["endTime"],
    negFeedbackInfo: json["negFeedbackInfo"] == null ? [] : List<NegFeedbackInfo>.from(json["negFeedbackInfo"]!.map((x) => NegFeedbackInfo.fromJson(x))),
    negFeedbackShow: json["negFeedbackShow"],
    pageStyleKey: json["pageStyleKey"],
    sceneKey: json["sceneKey"],
    similarShow: json["similarShow"],
  );

  Map<String, dynamic> toJson() => {
    "effectTime": effectTime,
    "endTime": endTime,
    "negFeedbackInfo": negFeedbackInfo == null ? [] : List<dynamic>.from(negFeedbackInfo!.map((x) => x.toJson())),
    "negFeedbackShow": negFeedbackShow,
    "pageStyleKey": pageStyleKey,
    "sceneKey": sceneKey,
    "similarShow": similarShow,
  };
}

class NegFeedbackInfo {
  int? id;
  String? negFeedBackName;
  int? order;

  NegFeedbackInfo({
    this.id,
    this.negFeedBackName,
    this.order,
  });

  factory NegFeedbackInfo.fromJson(Map<String, dynamic> json) => NegFeedbackInfo(
    id: json["id"],
    negFeedBackName: json["negFeedBackName"],
    order: json["order"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "negFeedBackName": negFeedBackName,
    "order": order,
  };
}

class TemperaturesDynamicExt {
  String? otherDExtMark;

  TemperaturesDynamicExt({
    this.otherDExtMark,
  });

  factory TemperaturesDynamicExt.fromJson(Map<String, dynamic> json) => TemperaturesDynamicExt(
    otherDExtMark: json["other_d_ext_mark"],
  );

  Map<String, dynamic> toJson() => {
    "other_d_ext_mark": otherDExtMark,
  };
}

class Ext {
  String? recMark;
  String? extraMark;
  String? recallMark;
  String? otherExtMark;

  Ext({
    this.recMark,
    this.extraMark,
    this.recallMark,
    this.otherExtMark,
  });

  factory Ext.fromJson(Map<String, dynamic> json) => Ext(
    recMark: json["rec_mark"],
    extraMark: json["extra_mark"],
    recallMark: json["recall_mark"],
    otherExtMark: json["other_ext_mark"],
  );

  Map<String, dynamic> toJson() => {
    "rec_mark": recMark,
    "extra_mark": extraMark,
    "recall_mark": recallMark,
    "other_ext_mark": otherExtMark,
  };
}

class MobileVerticalView {
  LocateLabels? locateLabels;

  MobileVerticalView({
    this.locateLabels,
  });

  factory MobileVerticalView.fromJson(Map<String, dynamic> json) => MobileVerticalView(
    locateLabels: json["locateLabels"] == null ? null : LocateLabels.fromJson(json["locateLabels"]),
  );

  Map<String, dynamic> toJson() => {
    "locateLabels": locateLabels?.toJson(),
  };
}

class LocateLabels {
  LowerRightLabel? lowerRightLabel;

  LocateLabels({
    this.lowerRightLabel,
  });

  factory LocateLabels.fromJson(Map<String, dynamic> json) => LocateLabels(
    lowerRightLabel: json["LOWER_RIGHT_LABEL"] == null ? null : LowerRightLabel.fromJson(json["LOWER_RIGHT_LABEL"]),
  );

  Map<String, dynamic> toJson() => {
    "LOWER_RIGHT_LABEL": lowerRightLabel?.toJson(),
  };
}

class LowerRightLabel {
  String? materialValueKey;
  int? cccLabelIndex;
  List<LowerRightLabelRelatedColor>? relatedColor;

  LowerRightLabel({
    this.materialValueKey,
    this.cccLabelIndex,
    this.relatedColor,
  });

  factory LowerRightLabel.fromJson(Map<String, dynamic> json) => LowerRightLabel(
    materialValueKey: json["materialValueKey"],
    cccLabelIndex: json["cccLabelIndex"],
    relatedColor: json["relatedColor"] == null ? [] : List<LowerRightLabelRelatedColor>.from(json["relatedColor"]!.map((x) => LowerRightLabelRelatedColor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "materialValueKey": materialValueKey,
    "cccLabelIndex": cccLabelIndex,
    "relatedColor": relatedColor == null ? [] : List<dynamic>.from(relatedColor!.map((x) => x.toJson())),
  };
}

class LowerRightLabelRelatedColor {
  String? goodsColorImage;
  String? goodsId;

  LowerRightLabelRelatedColor({
    this.goodsColorImage,
    this.goodsId,
  });

  factory LowerRightLabelRelatedColor.fromJson(Map<String, dynamic> json) => LowerRightLabelRelatedColor(
    goodsColorImage: json["goods_color_image"],
    goodsId: json["goods_id"],
  );

  Map<String, dynamic> toJson() => {
    "goods_color_image": goodsColorImage,
    "goods_id": goodsId,
  };
}

class PretreatInfo {
  bool? badgesReady;
  String? seriesOrBrandAnalysis;
  List<SellingPoint>? sellingPoints;
  bool? sellingPointsReady;
  MallTagsInfo? mallTagsInfo;
  bool? localMallReady;
  bool? stockLeftReady;
  int? flashsale;
  bool? userBehaviorLabelReady;
  bool? rankingListReady;

  PretreatInfo({
    this.badgesReady,
    this.seriesOrBrandAnalysis,
    this.sellingPoints,
    this.sellingPointsReady,
    this.mallTagsInfo,
    this.localMallReady,
    this.stockLeftReady,
    this.flashsale,
    this.userBehaviorLabelReady,
    this.rankingListReady,
  });

  factory PretreatInfo.fromJson(Map<String, dynamic> json) => PretreatInfo(
    badgesReady: json["badgesReady"],
    seriesOrBrandAnalysis: json["seriesOrBrandAnalysis"],
    sellingPoints: json["sellingPoints"] == null ? [] : List<SellingPoint>.from(json["sellingPoints"]!.map((x) => SellingPoint.fromJson(x))),
    sellingPointsReady: json["sellingPointsReady"],
    mallTagsInfo: json["mallTagsInfo"] == null ? null : MallTagsInfo.fromJson(json["mallTagsInfo"]),
    localMallReady: json["localMallReady"],
    stockLeftReady: json["stockLeftReady"],
    flashsale: json["flashsale"],
    userBehaviorLabelReady: json["userBehaviorLabelReady"],
    rankingListReady: json["rankingListReady"],
  );

  Map<String, dynamic> toJson() => {
    "badgesReady": badgesReady,
    "seriesOrBrandAnalysis": seriesOrBrandAnalysis,
    "sellingPoints": sellingPoints == null ? [] : List<dynamic>.from(sellingPoints!.map((x) => x.toJson())),
    "sellingPointsReady": sellingPointsReady,
    "mallTagsInfo": mallTagsInfo?.toJson(),
    "localMallReady": localMallReady,
    "stockLeftReady": stockLeftReady,
    "flashsale": flashsale,
    "userBehaviorLabelReady": userBehaviorLabelReady,
    "rankingListReady": rankingListReady,
  };
}

class MallTagsInfo {
  bool? localMall;
  String? mallTags;
  String? languageMallName;
  String? mallName;

  MallTagsInfo({
    this.localMall,
    this.mallTags,
    this.languageMallName,
    this.mallName,
  });

  factory MallTagsInfo.fromJson(Map<String, dynamic> json) => MallTagsInfo(
    localMall: json["localMall"],
    mallTags: json["mall_tags"],
    languageMallName: json["language_mall_name"],
    mallName: json["mall_name"],
  );

  Map<String, dynamic> toJson() => {
    "localMall": localMall,
    "mall_tags": mallTags,
    "language_mall_name": languageMallName,
    "mall_name": mallName,
  };
}

class SellingPoint {
  String? tagValDesc;
  String? tagValNameEn;
  String? tagValNameLang;
  String? selectId;
  String? change;
  String? tagValName;
  String? tagSort;
  String? tagValId;
  String? tagId;

  SellingPoint({
    this.tagValDesc,
    this.tagValNameEn,
    this.tagValNameLang,
    this.selectId,
    this.change,
    this.tagValName,
    this.tagSort,
    this.tagValId,
    this.tagId,
  });

  factory SellingPoint.fromJson(Map<String, dynamic> json) => SellingPoint(
    tagValDesc: json["tag_val_desc"],
    tagValNameEn: json["tag_val_name_en"],
    tagValNameLang: json["tag_val_name_lang"],
    selectId: json["select_id"],
    change: json["change"],
    tagValName: json["tag_val_name"],
    tagSort: json["tag_sort"],
    tagValId: json["tag_val_id"],
    tagId: json["tag_id"],
  );

  Map<String, dynamic> toJson() => {
    "tag_val_desc": tagValDesc,
    "tag_val_name_en": tagValNameEn,
    "tag_val_name_lang": tagValNameLang,
    "select_id": selectId,
    "change": change,
    "tag_val_name": tagValName,
    "tag_sort": tagSort,
    "tag_val_id": tagValId,
    "tag_id": tagId,
  };
}

class PromotionInfo {
  String? id;
  String? typeId;
  String? isReturn;
  String? scId;
  String? singleNum;
  String? endTimestamp;
  String? mallCode;

  PromotionInfo({
    this.id,
    this.typeId,
    this.isReturn,
    this.scId,
    this.singleNum,
    this.endTimestamp,
    this.mallCode,
  });

  factory PromotionInfo.fromJson(Map<String, dynamic> json) => PromotionInfo(
    id: json["id"],
    typeId: json["typeId"],
    isReturn: json["isReturn"],
    scId: json["scId"],
    singleNum: json["singleNum"],
    endTimestamp: json["endTimestamp"],
    mallCode: json["mall_code"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "typeId": typeId,
    "isReturn": isReturn,
    "scId": scId,
    "singleNum": singleNum,
    "endTimestamp": endTimestamp,
    "mall_code": mallCode,
  };
}

class TemperaturesRelatedColor {
  String? goodsId;
  Ext? ext;
  RelatedColorDynamicExt? dynamicExt;
  String? goodsRelationId;
  List<dynamic>? spuImage;
  String? businessModel;
  String? storeCode;
  String? mallCode;
  int? quickship;
  String? goodsColorImage;
  String? goodsSn;
  String? catId;
  List<String>? detailImage;
  List<dynamic>? testImageInfoList;
  String? isShowPlusSize;

  TemperaturesRelatedColor({
    this.goodsId,
    this.ext,
    this.dynamicExt,
    this.goodsRelationId,
    this.spuImage,
    this.businessModel,
    this.storeCode,
    this.mallCode,
    this.quickship,
    this.goodsColorImage,
    this.goodsSn,
    this.catId,
    this.detailImage,
    this.testImageInfoList,
    this.isShowPlusSize,
  });

  factory TemperaturesRelatedColor.fromJson(Map<String, dynamic> json) => TemperaturesRelatedColor(
    goodsId: json["goods_id"],
    ext: json["ext"] == null ? null : Ext.fromJson(json["ext"]),
    dynamicExt: json["dynamic_ext"] == null ? null : RelatedColorDynamicExt.fromJson(json["dynamic_ext"]),
    goodsRelationId: json["goods_relation_id"],
    spuImage: json["spu_image"] == null ? [] : List<dynamic>.from(json["spu_image"]!.map((x) => x)),
    businessModel: json["business_model"],
    storeCode: json["store_code"],
    mallCode: json["mall_code"],
    quickship: json["quickship"],
    goodsColorImage: json["goods_color_image"],
    goodsSn: json["goods_sn"],
    catId: json["cat_id"],
    detailImage: json["detail_image"] == null ? [] : List<String>.from(json["detail_image"]!.map((x) => x)),
    testImageInfoList: json["test_image_info_list"] == null ? [] : List<dynamic>.from(json["test_image_info_list"]!.map((x) => x)),
    isShowPlusSize: json["is_show_plus_size"],
  );

  Map<String, dynamic> toJson() => {
    "goods_id": goodsId,
    "ext": ext?.toJson(),
    "dynamic_ext": dynamicExt?.toJson(),
    "goods_relation_id": goodsRelationId,
    "spu_image": spuImage == null ? [] : List<dynamic>.from(spuImage!.map((x) => x)),
    "business_model": businessModel,
    "store_code": storeCode,
    "mall_code": mallCode,
    "quickship": quickship,
    "goods_color_image": goodsColorImage,
    "goods_sn": goodsSn,
    "cat_id": catId,
    "detail_image": detailImage == null ? [] : List<dynamic>.from(detailImage!.map((x) => x)),
    "test_image_info_list": testImageInfoList == null ? [] : List<dynamic>.from(testImageInfoList!.map((x) => x)),
    "is_show_plus_size": isShowPlusSize,
  };
}

class RelatedColorDynamicExt {
  RelatedColorDynamicExt();

  factory RelatedColorDynamicExt.fromJson(Map<String, dynamic> json) => RelatedColorDynamicExt(
  );

  Map<String, dynamic> toJson() => {
  };
}

class RetailPrice {
  String? amount;
  String? amountWithSymbol;
  String? usdAmount;
  String? usdAmountWithSymbol;

  RetailPrice({
    this.amount,
    this.amountWithSymbol,
    this.usdAmount,
    this.usdAmountWithSymbol,
  });

  factory RetailPrice.fromJson(Map<String, dynamic> json) => RetailPrice(
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

class SheinClubPromotionInfo {
  String? discountValue;
  String? skc;
  RetailPrice? price;
  String? goodsId;
  RetailPrice? discountAmount;
  ProductCoupon? productCoupon;

  SheinClubPromotionInfo({
    this.discountValue,
    this.skc,
    this.price,
    this.goodsId,
    this.discountAmount,
    this.productCoupon,
  });

  factory SheinClubPromotionInfo.fromJson(Map<String, dynamic> json) => SheinClubPromotionInfo(
    discountValue: json["discountValue"],
    skc: json["skc"],
    price: json["price"] == null ? null : RetailPrice.fromJson(json["price"]),
    goodsId: json["goods_id"],
    discountAmount: json["discount_amount"] == null ? null : RetailPrice.fromJson(json["discount_amount"]),
    productCoupon: json["productCoupon"] == null ? null : ProductCoupon.fromJson(json["productCoupon"]),
  );

  Map<String, dynamic> toJson() => {
    "discountValue": discountValue,
    "skc": skc,
    "price": price?.toJson(),
    "goods_id": goodsId,
    "discount_amount": discountAmount?.toJson(),
    "productCoupon": productCoupon?.toJson(),
  };
}

class ProductCoupon {
  String? productCode;
  List<dynamic>? optimalCoupons;
  List<dynamic>? coupons;

  ProductCoupon({
    this.productCode,
    this.optimalCoupons,
    this.coupons,
  });

  factory ProductCoupon.fromJson(Map<String, dynamic> json) => ProductCoupon(
    productCode: json["product_code"],
    optimalCoupons: json["optimal_coupons"] == null ? [] : List<dynamic>.from(json["optimal_coupons"]!.map((x) => x)),
    coupons: json["coupons"] == null ? [] : List<dynamic>.from(json["coupons"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "product_code": productCode,
    "optimal_coupons": optimalCoupons == null ? [] : List<dynamic>.from(optimalCoupons!.map((x) => x)),
    "coupons": coupons == null ? [] : List<dynamic>.from(coupons!.map((x) => x)),
  };
}

class TagResult {
  String? tagName;
  String? tagNameEn;
  String? tagId;
  List<SellingPoint>? tags;

  TagResult({
    this.tagName,
    this.tagNameEn,
    this.tagId,
    this.tags,
  });

  factory TagResult.fromJson(Map<String, dynamic> json) => TagResult(
    tagName: json["tag_name"],
    tagNameEn: json["tag_name_en"],
    tagId: json["tag_id"],
    tags: json["tags"] == null ? [] : List<SellingPoint>.from(json["tags"]!.map((x) => SellingPoint.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "tag_name": tagName,
    "tag_name_en": tagNameEn,
    "tag_id": tagId,
    "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x.toJson())),
  };
}
