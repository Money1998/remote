class ProductModel {
  bool? success;
  Data? data;

  ProductModel({this.success, this.data});

  ProductModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Docs>? docs;
  int? totalDocs;
  int? limit;
  int? totalPages;
  int? page;
  int? pagingCounter;
  bool? hasPrevPage;
  bool? hasNextPage;
  int? prevPage;
  int? nextPage;

  Data(
      {this.docs,
      this.totalDocs,
      this.limit,
      this.totalPages,
      this.page,
      this.pagingCounter,
      this.hasPrevPage,
      this.hasNextPage,
      this.prevPage,
      this.nextPage});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['docs'] != null) {
      docs = <Docs>[];
      json['docs'].forEach((v) {
        docs!.add(Docs.fromJson(v));
      });
    }
    totalDocs = json['totalDocs'];
    limit = json['limit'];
    totalPages = json['totalPages'];
    page = json['page'];
    pagingCounter = json['pagingCounter'];
    hasPrevPage = json['hasPrevPage'];
    hasNextPage = json['hasNextPage'];
    prevPage = json['prevPage'];
    nextPage = json['nextPage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (docs != null) {
      data['docs'] = docs!.map((v) => v.toJson()).toList();
    }
    data['totalDocs'] = totalDocs;
    data['limit'] = limit;
    data['totalPages'] = totalPages;
    data['page'] = page;
    data['pagingCounter'] = pagingCounter;
    data['hasPrevPage'] = hasPrevPage;
    data['hasNextPage'] = hasNextPage;
    data['prevPage'] = prevPage;
    data['nextPage'] = nextPage;
    return data;
  }
}

class Docs {
  String? nameInHindi;
  String? sId;
  String? nameInEnglish;
  String? image;
  String? descriptionInHindi;
  String? descriptionInEnglish;
  bool? deleted;
  String? createdAt;
  String? updatedAt;
  int? iV;
  int? price;
  String? base64Image;

  Docs(
      {this.sId,
      this.nameInHindi,
      this.nameInEnglish,
      this.image,
      this.descriptionInHindi,
      this.descriptionInEnglish,
      this.deleted,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.price,
      this.base64Image});

  Docs.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    nameInHindi = json['nameInHindi'];
    nameInEnglish = json['nameInEnglish'];
    image = json['image'];
    descriptionInHindi = json['descriptionInHindi'];
    descriptionInEnglish = json['descriptionInEnglish'];
    deleted = json['deleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    price = json['price'];
    base64Image = json['base64Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['nameInHindi'] = nameInHindi;
    data['nameInEnglish'] = nameInEnglish;
    data['image'] = image;
    data['descriptionInHindi'] = descriptionInHindi;
    data['descriptionInEnglish'] = descriptionInEnglish;
    data['deleted'] = deleted;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    data['price'] = price;
    data['base64Image'] = base64Image;
    return data;
  }
}
