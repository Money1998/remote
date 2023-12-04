class SingleRewardProductModel {
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

  SingleRewardProductModel(
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
        this.iV});

  SingleRewardProductModel.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}
