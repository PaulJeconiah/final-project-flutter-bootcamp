// ignore_for_file: unnecessary_this, unnecessary_new, prefer_collection_literals

class UserModel {
  int? id;
  String? brand;
  String? name;
  String? price;
  String? imageLink;
  String? description;

  UserModel({
    this.id,
    this.brand,
    this.name,
    this.price,
    this.imageLink,
    this.description,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    brand = json['brand'];
    name = json['name'];
    price = json['price'];
    imageLink = json['image_link'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['brand'] = this.brand;
    data['name'] = this.name;
    data['price'] = this.price;
    data['image_link'] = this.imageLink;
    data['description'] = this.description;
    return data;
  }
}
