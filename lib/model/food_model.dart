class FoodModel {
  String id;
  String idShop;
  String nameFood;
  String price;
  String pathImage;
  String detail;

  FoodModel(
      {this.id,
      this.idShop,
      this.nameFood,
      this.price,
      this.pathImage,
      this.detail});

  FoodModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idShop = json['idShop'];
    nameFood = json['NameFood'];
    price = json['Price'];
    pathImage = json['PathImage'];
    detail = json['Detail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['idShop'] = this.idShop;
    data['NameFood'] = this.nameFood;
    data['Price'] = this.price;
    data['PathImage'] = this.pathImage;
    data['Detail'] = this.detail;
    return data;
  }
}
