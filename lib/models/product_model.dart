class Product {
  final String image;
  final String title;
  final int price, id;
  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.id,
  });
}

final List<Product> products = [
  Product(
    id: 1,
    image: "assets/images/sp1.png",
    title: "Acer Nitro 5",
    price: 25000000,
  ),
  Product(
    id: 2,
    image: "assets/images/sp1.png",
    title: "Asus Gaming NS6",
    price: 27000000,
  ),
  Product(
    id: 3,
    image: "assets/images/sp1.png",
    title: "Gaming HP VICTUS 16",
    price: 30000000,
  ),
  Product(
    id: 4,
    image: "assets/images/sp1.png",
    title: "Gaming MSI Katana",
    price: 40000000,
  ),
  Product(
    id: 5,
    image: "assets/images/sp1.png",
    title: "Gaming Asus ROG Strix",
    price: 15000000,
  ),
  Product(
    id: 6,
    image: "assets/images/sp1.png",
    title: "GIGABYTE G5",
    price: 20000000,
  ),
];
