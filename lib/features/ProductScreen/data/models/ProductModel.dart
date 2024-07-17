// class ProductModel {
//   ProductModel({
//       this.products,
//       this.total,
//       this.skip,
//       this.limit,});
//
//   ProductModel.fromJson(dynamic json) {
//     if (json['products'] != null) {
//       products = [];
//       json['products'].forEach((v) {
//         products?.add(Products.fromJson(v));
//       });
//     }
//     total = json['total'];
//     skip = json['skip'];
//     limit = json['limit'];
//   }
//   List<Products>? products;
//   int? total;
//   int? skip;
//   int? limit;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (products != null) {
//       map['products'] = products?.map((v) => v.toJson()).toList();
//     }
//     map['total'] = total;
//     map['skip'] = skip;
//     map['limit'] = limit;
//     return map;
//   }
//
// }
//
// class Products {
//   Products({
//       this.id,
//       this.title,
//       this.description,
//       this.category,
//       this.price,
//       this.discountPercentage,
//       this.rating,
//       this.stock,
//       this.tags,
//       this.brand,
//       this.sku,
//       this.weight,
//       this.dimensions,
//       this.warrantyInformation,
//       this.shippingInformation,
//       this.availabilityStatus,
//       this.reviews,
//       this.returnPolicy,
//       this.minimumOrderQuantity,
//       this.meta,
//       this.images,
//       this.thumbnail,});
//
//   Products.fromJson(dynamic json) {
//     id = json['id'];
//     title = json['title'];
//     description = json['description'];
//     category = json['category'];
//     price = json['price'];
//     discountPercentage = json['discountPercentage'];
//     rating = json['rating'];
//     stock = json['stock'];
//     tags = json['tags'] != null ? json['tags'].cast<String>() : [];
//     brand = json['brand'];
//     sku = json['sku'];
//     weight = json['weight'];
//     dimensions = json['dimensions'] != null ? Dimensions.fromJson(json['dimensions']) : null;
//     warrantyInformation = json['warrantyInformation'];
//     shippingInformation = json['shippingInformation'];
//     availabilityStatus = json['availabilityStatus'];
//     if (json['reviews'] != null) {
//       reviews = [];
//       json['reviews'].forEach((v) {
//         reviews?.add(Reviews.fromJson(v));
//       });
//     }
//     returnPolicy = json['returnPolicy'];
//     minimumOrderQuantity = json['minimumOrderQuantity'];
//     meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
//     images = json['images'] != null ? json['images'].cast<String>() : [];
//     thumbnail = json['thumbnail'];
//   }
//   int? id;
//   String? title;
//   String? description;
//   String? category;
//   double? price;
//   double? discountPercentage;
//   double? rating;
//   int? stock;
//   List<String>? tags;
//   String? brand;
//   String? sku;
//   int? weight;
//   Dimensions? dimensions;
//   String? warrantyInformation;
//   String? shippingInformation;
//   String? availabilityStatus;
//   List<Reviews>? reviews;
//   String? returnPolicy;
//   int? minimumOrderQuantity;
//   Meta? meta;
//   List<String>? images;
//   String? thumbnail;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['id'] = id;
//     map['title'] = title;
//     map['description'] = description;
//     map['category'] = category;
//     map['price'] = price;
//     map['discountPercentage'] = discountPercentage;
//     map['rating'] = rating;
//     map['stock'] = stock;
//     map['tags'] = tags;
//     map['brand'] = brand;
//     map['sku'] = sku;
//     map['weight'] = weight;
//     if (dimensions != null) {
//       map['dimensions'] = dimensions?.toJson();
//     }
//     map['warrantyInformation'] = warrantyInformation;
//     map['shippingInformation'] = shippingInformation;
//     map['availabilityStatus'] = availabilityStatus;
//     if (reviews != null) {
//       map['reviews'] = reviews?.map((v) => v.toJson()).toList();
//     }
//     map['returnPolicy'] = returnPolicy;
//     map['minimumOrderQuantity'] = minimumOrderQuantity;
//     if (meta != null) {
//       map['meta'] = meta?.toJson();
//     }
//     map['images'] = images;
//     map['thumbnail'] = thumbnail;
//     return map;
//   }
//
// }
//
// class Meta {
//   Meta({
//       this.createdAt,
//       this.updatedAt,
//       this.barcode,
//       this.qrCode,});
//
//   Meta.fromJson(dynamic json) {
//     createdAt = json['createdAt'];
//     updatedAt = json['updatedAt'];
//     barcode = json['barcode'];
//     qrCode = json['qrCode'];
//   }
//   String? createdAt;
//   String? updatedAt;
//   String? barcode;
//   String? qrCode;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['createdAt'] = createdAt;
//     map['updatedAt'] = updatedAt;
//     map['barcode'] = barcode;
//     map['qrCode'] = qrCode;
//     return map;
//   }
//
// }
//
// class Reviews {
//   Reviews({
//       this.rating,
//       this.comment,
//       this.date,
//       this.reviewerName,
//       this.reviewerEmail,});
//
//   Reviews.fromJson(dynamic json) {
//     rating = json['rating'];
//     comment = json['comment'];
//     date = json['date'];
//     reviewerName = json['reviewerName'];
//     reviewerEmail = json['reviewerEmail'];
//   }
//   int? rating;
//   String? comment;
//   String? date;
//   String? reviewerName;
//   String? reviewerEmail;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['rating'] = rating;
//     map['comment'] = comment;
//     map['date'] = date;
//     map['reviewerName'] = reviewerName;
//     map['reviewerEmail'] = reviewerEmail;
//     return map;
//   }
//
// }
//
// class Dimensions {
//   Dimensions({
//       this.width,
//       this.height,
//       this.depth,});
//
//   Dimensions.fromJson(dynamic json) {
//     width = json['width'];
//     height = json['height'];
//     depth = json['depth'];
//   }
//   double? width;
//   double? height;
//   double? depth;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['width'] = width;
//     map['height'] = height;
//     map['depth'] = depth;
//     return map;
//   }
//
// }
class ProductModel {
  List<Products>? products;
  int? total;
  int? skip;
  int? limit;

  ProductModel({this.products, this.total, this.skip, this.limit});

  ProductModel.fromJson(Map<String, dynamic> json) {
    products = json["products"] == null ? null : (json["products"] as List).map((e) => Products.fromJson(e)).toList();
    total = (json["total"] as num).toInt();
    skip = (json["skip"] as num).toInt();
    limit = (json["limit"] as num).toInt();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(products != null) {
      _data["products"] = products?.map((e) => e.toJson()).toList();
    }
    _data["total"] = total;
    _data["skip"] = skip;
    _data["limit"] = limit;
    return _data;
  }
}

class Products {
  int? id;
  String? title;
  String? description;
  String? category;
  double? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  List<String>? tags;
  String? brand;
  String? sku;
  int? weight;
  Dimensions? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  List<Reviews>? reviews;
  String? returnPolicy;
  int? minimumOrderQuantity;
  Meta? meta;
  List<String>? images;
  String? thumbnail;

  Products({this.id, this.title, this.description, this.category, this.price, this.discountPercentage, this.rating, this.stock, this.tags, this.brand, this.sku, this.weight, this.dimensions, this.warrantyInformation, this.shippingInformation, this.availabilityStatus, this.reviews, this.returnPolicy, this.minimumOrderQuantity, this.meta, this.images, this.thumbnail});

  Products.fromJson(Map<String, dynamic> json) {
    id = (json["id"] as num).toInt();
    title = json["title"];
    description = json["description"];
    category = json["category"];
    price = (json["price"] as num).toDouble();
    discountPercentage = (json["discountPercentage"] as num).toDouble();
    rating = (json["rating"] as num).toDouble();
    stock = (json["stock"] as num).toInt();
    tags = json["tags"] == null ? null : List<String>.from(json["tags"]);
    brand = json["brand"];
    sku = json["sku"];
    weight = (json["weight"] as num).toInt();
    dimensions = json["dimensions"] == null ? null : Dimensions.fromJson(json["dimensions"]);
    warrantyInformation = json["warrantyInformation"];
    shippingInformation = json["shippingInformation"];
    availabilityStatus = json["availabilityStatus"];
    reviews = json["reviews"] == null ? null : (json["reviews"] as List).map((e) => Reviews.fromJson(e)).toList();
    returnPolicy = json["returnPolicy"];
    minimumOrderQuantity = (json["minimumOrderQuantity"] as num).toInt();
    meta = json["meta"] == null ? null : Meta.fromJson(json["meta"]);
    images = json["images"] == null ? null : List<String>.from(json["images"]);
    thumbnail = json["thumbnail"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["description"] = description;
    _data["category"] = category;
    _data["price"] = price;
    _data["discountPercentage"] = discountPercentage;
    _data["rating"] = rating;
    _data["stock"] = stock;
    if(tags != null) {
      _data["tags"] = tags;
    }
    _data["brand"] = brand;
    _data["sku"] = sku;
    _data["weight"] = weight;
    if(dimensions != null) {
      _data["dimensions"] = dimensions?.toJson();
    }
    _data["warrantyInformation"] = warrantyInformation;
    _data["shippingInformation"] = shippingInformation;
    _data["availabilityStatus"] = availabilityStatus;
    if(reviews != null) {
      _data["reviews"] = reviews?.map((e) => e.toJson()).toList();
    }
    _data["returnPolicy"] = returnPolicy;
    _data["minimumOrderQuantity"] = minimumOrderQuantity;
    if(meta != null) {
      _data["meta"] = meta?.toJson();
    }
    if(images != null) {
      _data["images"] = images;
    }
    _data["thumbnail"] = thumbnail;
    return _data;
  }
}

class Meta {
  String? createdAt;
  String? updatedAt;
  String? barcode;
  String? qrCode;

  Meta({this.createdAt, this.updatedAt, this.barcode, this.qrCode});

  Meta.fromJson(Map<String, dynamic> json) {
    createdAt = json["createdAt"];
    updatedAt = json["updatedAt"];
    barcode = json["barcode"];
    qrCode = json["qrCode"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["createdAt"] = createdAt;
    _data["updatedAt"] = updatedAt;
    _data["barcode"] = barcode;
    _data["qrCode"] = qrCode;
    return _data;
  }
}

class Reviews {
  int? rating;
  String? comment;
  String? date;
  String? reviewerName;
  String? reviewerEmail;

  Reviews({this.rating, this.comment, this.date, this.reviewerName, this.reviewerEmail});

  Reviews.fromJson(Map<String, dynamic> json) {
    rating = (json["rating"] as num).toInt();
    comment = json["comment"];
    date = json["date"];
    reviewerName = json["reviewerName"];
    reviewerEmail = json["reviewerEmail"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["rating"] = rating;
    _data["comment"] = comment;
    _data["date"] = date;
    _data["reviewerName"] = reviewerName;
    _data["reviewerEmail"] = reviewerEmail;
    return _data;
  }
}

class Dimensions {
  double? width;
  double? height;
  double? depth;

  Dimensions({this.width, this.height, this.depth});

  Dimensions.fromJson(Map<String, dynamic> json) {
    width = (json["width"] as num).toDouble();
    height = (json["height"] as num).toDouble();
    depth = (json["depth"] as num).toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["height"] = height;
    _data["depth"] = depth;
    return _data;
  }
}