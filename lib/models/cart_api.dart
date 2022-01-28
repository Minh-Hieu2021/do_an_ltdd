class Cart {
  int id;
  int quantity;
  bool status;
  String title;
  int price;
  String image;

  Cart(
      {this.id,
      this.quantity,
      this.status,
      this.title,
      this.price,
      this.image});

  Cart.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    quantity = json['Quantity'];
    status = json['Status'];
    title = json['title'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Quantity'] = this.quantity;
    data['Status'] = this.status;
    data['title'] = this.title;
    data['price'] = this.price;
    data['image'] = this.image;
    return data;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
