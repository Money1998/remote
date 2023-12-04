class UserDataModel {
  User? user;
  Requests? requests;

  UserDataModel({this.user, this.requests});

  UserDataModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    requests =
        json['requests'] != null ? Requests.fromJson(json['requests']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (user != null) {
      data['user'] = user!.toJson();
    }
    if (requests != null) {
      data['requests'] = requests!.toJson();
    }
    return data;
  }
}

class User {
  String? sId;
  String? name;
  String? upiId;
  bool? blocked;
  String? email;
  String? phone;
  bool? isCarpenter;
  bool? isEnglish;
  int? points;
  String? role;
  String? createdAt;
  int? iV;

  User(
      {this.sId,
      this.name,
      this.upiId,
      this.blocked,
      this.email,
      this.phone,
      this.isCarpenter,
      this.isEnglish,
      this.points,
      this.role,
      this.createdAt,
      this.iV});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    upiId = json['upiId'];
    blocked = json['blocked'];
    email = json['email'];
    phone = json['phone'];
    isCarpenter = json['isCarpenter'];
    isEnglish = json['isEnglish'];
    points = json['points'];
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
    data['role'] = role;
    data['createdAt'] = createdAt;
    data['__v'] = iV;
    return data;
  }
}

class Requests {
  int? acceptedRequests;
  int? rejectedRequests;
  int? pendingRequests;
  int? totalRequest;

  Requests(
      {this.acceptedRequests,
      this.rejectedRequests,
      this.pendingRequests,
      this.totalRequest});

  Requests.fromJson(Map<String, dynamic> json) {
    acceptedRequests = json['acceptedRequests'];
    rejectedRequests = json['rejectedRequests'];
    pendingRequests = json['pendingRequests'];
    totalRequest = json['totalRequest'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['acceptedRequests'] = acceptedRequests;
    data['rejectedRequests'] = rejectedRequests;
    data['pendingRequests'] = pendingRequests;
    data['totalRequest'] = totalRequest;
    return data;
  }
}
