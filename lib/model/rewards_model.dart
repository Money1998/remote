class RewardsModel {
  bool? success;
  Data? data;

  RewardsModel({this.success, this.data});

  RewardsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<RewardDocs>? docs;
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
      docs = <RewardDocs>[];
      json['docs'].forEach((v) {
        docs!.add(new RewardDocs.fromJson(v));
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.docs != null) {
      data['docs'] = this.docs!.map((v) => v.toJson()).toList();
    }
    data['totalDocs'] = this.totalDocs;
    data['limit'] = this.limit;
    data['totalPages'] = this.totalPages;
    data['page'] = this.page;
    data['pagingCounter'] = this.pagingCounter;
    data['hasPrevPage'] = this.hasPrevPage;
    data['hasNextPage'] = this.hasNextPage;
    data['prevPage'] = this.prevPage;
    data['nextPage'] = this.nextPage;
    return data;
  }
}

class RewardDocs {
  String? sId;
  String? nameInHindi;
  String? nameInEnglish;
  String? image;
  String? descriptionInHindi;
  String? descriptionInEnglish;
  bool? deleted;
  int? price;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? base64Image;

  RewardDocs(
      {this.sId,
        this.nameInHindi,
        this.nameInEnglish,
        this.image,
        this.descriptionInHindi,
        this.descriptionInEnglish,
        this.deleted,
        this.price,
        this.createdAt,
        this.updatedAt,
        this.iV,
        this.base64Image});

  RewardDocs.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    nameInHindi = json['nameInHindi'];
    nameInEnglish = json['nameInEnglish'];
    image = json['image'];
    descriptionInHindi = json['descriptionInHindi'];
    descriptionInEnglish = json['descriptionInEnglish'];
    deleted = json['deleted'];
    price = json['price'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    base64Image = json['base64Image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['nameInHindi'] = this.nameInHindi;
    data['nameInEnglish'] = this.nameInEnglish;
    data['image'] = this.image;
    data['descriptionInHindi'] = this.descriptionInHindi;
    data['descriptionInEnglish'] = this.descriptionInEnglish;
    data['deleted'] = this.deleted;
    data['price'] = this.price;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    data['base64Image'] = this.base64Image;
    return data;
  }
}