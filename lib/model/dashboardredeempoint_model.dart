class DashboardRedeemPointModel {
  bool? success;
  Points? points;

  DashboardRedeemPointModel({this.success, this.points});

  DashboardRedeemPointModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    points =
    json['points'] != null ? new Points.fromJson(json['points']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.points != null) {
      data['points'] = this.points!.toJson();
    }
    return data;
  }
}

class Points {
  int? userTotalPoints;
  int? userUsedPoints;
  int? userRemainingPoints;

  Points({this.userTotalPoints, this.userUsedPoints, this.userRemainingPoints});

  Points.fromJson(Map<String, dynamic> json) {
    userTotalPoints = json['userTotalPoints'];
    userUsedPoints = json['userUsedPoints'];
    userRemainingPoints = json['userRemainingPoints'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userTotalPoints'] = this.userTotalPoints;
    data['userUsedPoints'] = this.userUsedPoints;
    data['userRemainingPoints'] = this.userRemainingPoints;
    return data;
  }
}