class Account {
  int id;
  String phone;
  String address;
  String fullName;
  String email;

  Account({this.id, this.phone, this.address, this.fullName, this.email});

  Account.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phone = json['phone'];
    address = json['Address'];
    fullName = json['FullName'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['phone'] = this.phone;
    data['Address'] = this.address;
    data['FullName'] = this.fullName;
    data['email'] = this.email;
    return data;
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
