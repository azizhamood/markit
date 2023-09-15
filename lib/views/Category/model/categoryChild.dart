
class CategoryChild {
  int? code;
  String? message;
  List<Content>? content;

  CategoryChild({this.code, this.message, this.content});

  CategoryChild.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['content'] != null) {
      content = <Content>[];
      json['content'].forEach((v) {
        content!.add(new Content.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.content != null) {
      data['content'] = this.content!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Content {
  String? catId;
  String? channelName;
  int? crowdId;
  String? id;
  String? name;
  String? abtBranch;
  List<Child>? child;
  String? channelType;
  int? isMapNav;
  int? pageDown;
  int? autoMap;
  DailyObj? dailyObj;
  AbtInfo? abtInfo;

  Content(
      {this.catId,
        this.channelName,
        this.crowdId,
        this.id,
        this.name,
        this.abtBranch,
        this.child,
        this.channelType,
        this.isMapNav,
        this.pageDown,
        this.autoMap,
        this.dailyObj,
        this.abtInfo});

  Content.fromJson(Map<String, dynamic> json) {
    catId = json['cat_id'];
    channelName = json['channelName'];
    crowdId = json['crowdId'];
    id = json['id'];
    name = json['name'];
    abtBranch = json['abtBranch'];
    if (json['child'] != null) {
      child = <Child>[];
      json['child'].forEach((v) {
        child!.add(new Child.fromJson(v));
      });
    }
    channelType = json['channel_type'];
    isMapNav = json['is_map_nav'];
    pageDown = json['pageDown'];
    autoMap = json['autoMap'];
    dailyObj = json['dailyObj'] != null
        ? new DailyObj.fromJson(json['dailyObj'])
        : null;
    abtInfo =
    json['abtInfo'] != null ? new AbtInfo.fromJson(json['abtInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cat_id'] = this.catId;
    data['channelName'] = this.channelName;
    data['crowdId'] = this.crowdId;
    data['id'] = this.id;
    data['name'] = this.name;
    data['abtBranch'] = this.abtBranch;
    if (this.child != null) {
      data['child'] = this.child!.map((v) => v.toJson()).toList();
    }
    data['channel_type'] = this.channelType;
    data['is_map_nav'] = this.isMapNav;
    data['pageDown'] = this.pageDown;
    data['autoMap'] = this.autoMap;
    if (this.dailyObj != null) {
      data['dailyObj'] = this.dailyObj!.toJson();
    }
    if (this.abtInfo != null) {
      data['abtInfo'] = this.abtInfo!.toJson();
    }
    return data;
  }
}

class Child {
  String? name;
  String? enName;
  String? id;
  String? type;
  String? navNodeId;
  List<Child>? child;
  String? leftThumb;
  String? relativeUrl;
  String? hrefTarget;
  String? hrefType;

  Child(
      {this.name,
        this.enName,
        this.id,
        this.type,
        this.navNodeId,
        this.child,
        this.leftThumb,
        this.relativeUrl,
        this.hrefTarget,
        this.hrefType});

  Child.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    enName = json['enName'];
    id = json['id'];
    type = json['type'];
    navNodeId = json['navNodeId'];
    if (json['child'] != null) {
      child = <Child>[];
      json['child'].forEach((v) {
        child!.add(new Child.fromJson(v));
      });
    }
    leftThumb = json['leftThumb'];
    relativeUrl = json['relativeUrl'];
    hrefTarget = json['hrefTarget'];
    hrefType = json['hrefType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['enName'] = this.enName;
    data['id'] = this.id;
    data['type'] = this.type;
    data['navNodeId'] = this.navNodeId;
    if (this.child != null) {
      data['child'] = this.child!.map((v) => v.toJson()).toList();
    }
    data['leftThumb'] = this.leftThumb;
    data['relativeUrl'] = this.relativeUrl;
    data['hrefTarget'] = this.hrefTarget;
    data['hrefType'] = this.hrefType;
    return data;
  }
}



class Style {
  String? type;
  String? modelTagId;
  String? collapseLimitTipImg;

  Style({this.type, this.modelTagId, this.collapseLimitTipImg});

  Style.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    modelTagId = json['modelTagId'];
    collapseLimitTipImg = json['collapseLimitTipImg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['modelTagId'] = this.modelTagId;
    data['collapseLimitTipImg'] = this.collapseLimitTipImg;
    return data;
  }
}

class Thumb {
  int? imgId;
  String? tagId;
  String? goodsId;
  String? enName;
  bool? isAuto;
  String? hrefTarget;
  String? hrefType;
  String? sku;
  String? height;
  String? alt;
  int? index;
  String? relativeUrl;
  String? target;
  String? width;
  bool? isAutoRec;
  String? navNodeId;
  bool? recommendCate;
  bool? isNotIn;
  String? adp;
  int? firstLevelCompId;
  String? cornerMarkImgSrc;
  String? notInHrefMsg;
  String? name;
  String? catUrl;
  String? categorySelect;
  List<CategoryList>? categoryList;
  String? categoryType;

  Thumb(
      {this.imgId,
        this.tagId,
        this.goodsId,
        this.enName,
        this.isAuto,
        this.hrefTarget,
        this.hrefType,
        this.sku,
        this.height,
        this.alt,
        this.index,
        this.relativeUrl,
        this.target,
        this.width,
        this.isAutoRec,
        this.navNodeId,
        this.recommendCate,
        this.isNotIn,
        this.adp,
        this.firstLevelCompId,
        this.cornerMarkImgSrc,
        this.notInHrefMsg,
        this.name,
        this.catUrl,
        this.categorySelect,
        this.categoryList,
        this.categoryType});

  Thumb.fromJson(Map<String, dynamic> json) {
    imgId = json['imgId'];
    tagId = json['tagId'];
    goodsId = json['goodsId'];
    enName = json['enName'];
    isAuto = json['isAuto'];
    hrefTarget = json['hrefTarget'];
    hrefType = json['hrefType'];
    sku = json['sku'];
    height = json['height'];
    alt = json['alt'];
    index = json['index'];
    relativeUrl = json['relativeUrl'];
    target = json['target'];
    width = json['width'];
    isAutoRec = json['isAutoRec'];
    navNodeId = json['navNodeId'];
    recommendCate = json['recommendCate'];
    isNotIn = json['isNotIn'];
    adp = json['adp'];
    firstLevelCompId = json['firstLevelCompId'];
    cornerMarkImgSrc = json['cornerMarkImgSrc'];
    notInHrefMsg = json['notInHrefMsg'];
    name = json['name'];
    catUrl = json['catUrl'];
    categorySelect = json['categorySelect'];
    if (json['categoryList'] != null) {
      categoryList = <CategoryList>[];
      json['categoryList'].forEach((v) {
        categoryList!.add(new CategoryList.fromJson(v));
      });
    }
    categoryType = json['categoryType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgId'] = this.imgId;
    data['tagId'] = this.tagId;
    data['goodsId'] = this.goodsId;
    data['enName'] = this.enName;
    data['isAuto'] = this.isAuto;
    data['hrefTarget'] = this.hrefTarget;
    data['hrefType'] = this.hrefType;
    data['sku'] = this.sku;
    data['height'] = this.height;
    data['alt'] = this.alt;
    data['index'] = this.index;
    data['relativeUrl'] = this.relativeUrl;
    data['target'] = this.target;
    data['width'] = this.width;
    data['isAutoRec'] = this.isAutoRec;
    data['navNodeId'] = this.navNodeId;
    data['recommendCate'] = this.recommendCate;
    data['isNotIn'] = this.isNotIn;
    data['adp'] = this.adp;
    data['firstLevelCompId'] = this.firstLevelCompId;
    data['cornerMarkImgSrc'] = this.cornerMarkImgSrc;
    data['notInHrefMsg'] = this.notInHrefMsg;
    data['name'] = this.name;
    data['catUrl'] = this.catUrl;
    data['categorySelect'] = this.categorySelect;
    if (this.categoryList != null) {
      data['categoryList'] = this.categoryList!.map((v) => v.toJson()).toList();
    }
    data['categoryType'] = this.categoryType;
    return data;
  }
}

class CategoryList {
  bool? val;
  String? sheinCatId;
  String? name;
  String? romweCatId;
  int? id;
  bool? check;

  CategoryList(
      {this.val,
        this.sheinCatId,
        this.name,
        this.romweCatId,
        this.id,
        this.check});

  CategoryList.fromJson(Map<String, dynamic> json) {
    val = json['val'];
    sheinCatId = json['shein_cat_id'];
    name = json['name'];
    romweCatId = json['romwe_cat_id'];
    id = json['id'];
    check = json['check'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['val'] = this.val;
    data['shein_cat_id'] = this.sheinCatId;
    data['name'] = this.name;
    data['romwe_cat_id'] = this.romweCatId;
    data['id'] = this.id;
    data['check'] = this.check;
    return data;
  }
}

class DailyObj {
  String? s20230907;
  String? s20230906;
  String? s20230905;
  String? s20230904;
  String? s20230903;
  String? s20230902;
  String? s20230901;

  DailyObj(
      {this.s20230907,
        this.s20230906,
        this.s20230905,
        this.s20230904,
        this.s20230903,
        this.s20230902,
        this.s20230901});

  DailyObj.fromJson(Map<String, dynamic> json) {
    s20230907 = json['2023-09-07'];
    s20230906 = json['2023-09-06'];
    s20230905 = json['2023-09-05'];
    s20230904 = json['2023-09-04'];
    s20230903 = json['2023-09-03'];
    s20230902 = json['2023-09-02'];
    s20230901 = json['2023-09-01'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['2023-09-07'] = this.s20230907;
    data['2023-09-06'] = this.s20230906;
    data['2023-09-05'] = this.s20230905;
    data['2023-09-04'] = this.s20230904;
    data['2023-09-03'] = this.s20230903;
    data['2023-09-02'] = this.s20230902;
    data['2023-09-01'] = this.s20230901;
    return data;
  }
}

class AbtInfo {
  List<Child>? child;
  String? p;
  String? param;
  String? poskey;
  String? posKey;
  String? sceneStr;

  AbtInfo(
      {this.child,
        this.p,
        this.param,
        this.poskey,
        this.posKey,
        this.sceneStr});

  AbtInfo.fromJson(Map<String, dynamic> json) {
    if (json['child'] != null) {
      child = <Child>[];
      json['child'].forEach((v) {
        child!.add(new Child.fromJson(v));
      });
    }
    p = json['p'];
    param = json['param'];
    poskey = json['poskey'];
    posKey = json['posKey'];
    sceneStr = json['sceneStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.child != null) {
      data['child'] = this.child!.map((v) => v.toJson()).toList();
    }
    data['p'] = this.p;
    data['param'] = this.param;
    data['poskey'] = this.poskey;
    data['posKey'] = this.posKey;
    data['sceneStr'] = this.sceneStr;
    return data;
  }
}

// class Child {
//   String? bid;
//   int? eid;
//   String? p;
//   String? type;
//
//   Child({this.bid, this.eid, this.p, this.type});
//
//   Child.fromJson(Map<String, dynamic> json) {
//     bid = json['bid'];
//     eid = json['eid'];
//     p = json['p'];
//     type = json['type'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['bid'] = this.bid;
//     data['eid'] = this.eid;
//     data['p'] = this.p;
//     data['type'] = this.type;
//     return data;
//   }
// }