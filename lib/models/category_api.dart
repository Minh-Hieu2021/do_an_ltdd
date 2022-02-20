class Categorys {
  int id;
  int producttypeId;
  String title;
  String description;
  int price;
  String image;
  String createdAt;
  String updatedAt;
  String loai;

  Categorys(
      {this.id,
      this.producttypeId,
      this.title,
      this.description,
      this.price,
      this.image,
      this.createdAt,
      this.updatedAt,
      this.loai});

  Categorys.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    producttypeId = json['Producttype_id'];
    title = json['title'];
    description = json['description'];
    price = json['price'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    loai = json['Loai'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Producttype_id'] = this.producttypeId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['price'] = this.price;
    data['image'] = this.image;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['Loai'] = this.loai;
    return data;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
