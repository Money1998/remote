class RedeemPointListModel {
  bool? success;
  PaginateResult? paginateResult;

  RedeemPointListModel({this.success,this.paginateResult});

  RedeemPointListModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    paginateResult = json['paginateResult'] != null
        ? PaginateResult.fromJson(json['paginateResult'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = this.success;
    if (paginateResult != null) {
      data['paginateResult'] = paginateResult!.toJson();
    }
    return data;
  }
}

class PaginateResult {
  List<RedeemPointsDocs>? docs;
  int? totalDocs;
  int? limit;
  int? totalPages;
  int? page;
  int? pagingCounter;
  bool? hasPrevPage;
  bool? hasNextPage;
  int? prevPage;
  int? nextPage;

  PaginateResult(
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

  PaginateResult.fromJson(Map<String, dynamic> json) {
    if (json['docs'] != null) {
      docs = <RedeemPointsDocs>[];
      json['docs'].forEach((v) {
        docs!.add(RedeemPointsDocs.fromJson(v));
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

class RedeemPointsDocs {
  String? sId;
  UserId? userId;
  int? points;
  String? status;
  String? redeemedAt;
  int? iV;

  RedeemPointsDocs(
      {this.sId,
      this.userId,
      this.points,
      this.status,
      this.redeemedAt,
      this.iV});

  RedeemPointsDocs.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    userId = json['userId'] != null ? UserId.fromJson(json['userId']) : null;
    points = json['points'];
    status = json['status'];
    redeemedAt = json['redeemedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    if (userId != null) {
      data['userId'] = userId!.toJson();
    }
    data['points'] = points;
    data['status'] = status;
    data['redeemedAt'] = redeemedAt;
    data['__v'] = iV;
    return data;
  }
}

class UserId {
  String? sId;
  String? name;
  String? upiId;
  bool? blocked;
  String? email;
  String? phone;
  bool? isCarpenter;
  bool? isEnglish;
  int? points;
  String? language;
  String? role;
  String? createdAt;
  int? iV;

  UserId(
      {this.sId,
      this.name,
      this.upiId,
      this.blocked,
      this.email,
      this.phone,
      this.isCarpenter,
      this.isEnglish,
      this.points,
      this.language,
      this.role,
      this.createdAt,
      this.iV});

  UserId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    upiId = json['upiId'];
    blocked = json['blocked'];
    email = json['email'];
    phone = json['phone'];
    isCarpenter = json['isCarpenter'];
    isEnglish = json['isEnglish'];
    points = json['points'];
    language = json['language'];
    role = json['role'];
    createdAt = json['createdAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['upiId'] = upiId;
    data['blocked'] = blocked;
    data['email'] = email;
    data['phone'] = phone;
    data['isCarpenter'] = isCarpenter;
    data['isEnglish'] = isEnglish;
    data['points'] = points;
    data['language'] = language;
    data['role'] = role;
    data['createdAt'] = createdAt;
    data['__v'] = iV;
    return data;
  }
}
