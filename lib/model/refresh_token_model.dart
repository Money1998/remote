class RefreshToken {
  bool? error;
  String? message;
  String? accessToken;

  RefreshToken({this.error, this.message, this.accessToken});

  RefreshToken.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message = json['message'];
    accessToken = json['accessToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    data['message'] = message;
    data['accessToken'] = accessToken;
    return data;
  }
}
