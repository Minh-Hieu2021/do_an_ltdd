import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:do_an_ltdd/models/product_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:do_an_ltdd/constanst.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  final dynamic Function() press;
  const DetailsScreen({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  get onPressed => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context),
      body: Center(
        child: ListView(
          children: <Widget>[
            Expanded(
              //Hình ảnh sản phẩm
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  color: const Color(0x00000000),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(products[0].image),
              ),
            ),
            Padding(
              //Tên sản phẩm
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                products[0].title,
                style: const TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Row(children: const <Widget>[
              // 5sao
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.star,
                  color: (Colors.yellow),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.star,
                  color: (Colors.yellow),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.star,
                  color: (Colors.yellow),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.star,
                  color: (Colors.yellow),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.star,
                  color: (Colors.yellow),
                ),
              ),
              Padding(
                //Đã bán
                padding: EdgeInsets.all(10),
                child: Text(
                  "Đã bán 120",
                  style: TextStyle(
                    color: kTextColor,
                  ),
                ),
              ),
            ]),
            Row(children: <Widget>[
              // Tiền mới tiền cũ
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "\$${products[0].price}",
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "30.000.000",
                  style: TextStyle(
                    color: kTextColor,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ),
            ]),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: Text(
                "Sản phẩm tương tự",
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 10,
                ),
              ),
            ),
            Row(children: <Widget>[
              // ListView(
              //   scrollDirection: Axis.horizontal,
              //   children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {},
                // => Navigator.push(context,MaterialPageRoute(builder: (context) => const DetailsScreen())),
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(products[0].image)),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        products[0].title,
                        style: const TextStyle(color: Colors.red, fontSize: 15),
                      ),
                    ),
                    Row(children: <Widget>[
                      // Tiền mới tiền cũ
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "\$${products[0].price}",
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "30.000.000",
                          style: TextStyle(
                            color: kTextColor,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {},
                // => Navigator.push(context,MaterialPageRoute(builder: (context) => const DetailsScreen())),
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(products[0].image)),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        products[0].title,
                        style: const TextStyle(color: Colors.red, fontSize: 15),
                      ),
                    ),
                    Row(children: <Widget>[
                      // Tiền mới tiền cũ
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "\$${products[0].price}",
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "30.000.000",
                          style: TextStyle(
                            color: kTextColor,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // background
                  onPrimary: Colors.white, // foreground
                ),
                onPressed: () {},
                // => Navigator.push(context,MaterialPageRoute(builder: (context) => const DetailsScreen())),
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset(products[0].image)),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        products[0].title,
                        style: const TextStyle(color: Colors.red, fontSize: 15),
                      ),
                    ),
                    Row(children: <Widget>[
                      // Tiền mới tiền cũ
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "\$${products[0].price}",
                          style: const TextStyle(
                            color: kTextColor,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "30.000.000",
                          style: TextStyle(
                            color: kTextColor,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              // ]),
            ]),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                //Thông tin chi tiết

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Thông tin chi tiết",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    // Tên các Thông tin chi tiết
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 5, 0),
                        child: Text(
                          "CPU",
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 28, 5, 0),
                        child: Text(
                          "RAM",
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 5, 0),
                        child: Text(
                          "Ổ cứng",
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 25, 5, 0),
                        child: Text(
                          "Card đồ hoạ",
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 42, 5, 0),
                        child: Text(
                          "Màn hình",
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    // Thông tin chi tiết được lấy lên từ products
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "Intel® Core™ i5-11400H Processor 2.7 GHz",
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "8GB DDR4 3200MHz",
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "512GB SSD M.2 PCIE G3X2, 1x slot M.2",
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "NVIDIA® GeForce RTX™ 3050 Laptop GPU + Intel® UHD Graphics",
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "15.6-inch FHD",
                          style: TextStyle(
                            color: kTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Mô tả sản phẩm
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Mô tả sản phẩm",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    products[0].description,
                    style: const TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Divider(
                  height: 20,
                  thickness: 5,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.black,
                ),
              ],
            ),
            Row(children: const <Widget>[
              //Khách hàng đánh giá
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Khách hàng đánh giá",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ]),
            Row(children: const <Widget>[
              // 5sao Cực kì hài lòng
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.star,
                  color: (Colors.yellow),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.star,
                  color: (Colors.yellow),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.star,
                  color: (Colors.yellow),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.star,
                  color: (Colors.yellow),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.star,
                  color: (Colors.yellow),
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Text(
                "Cực kì hài lòng",
                style: TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ]),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Máy đẹp, chất lượng tốt, đóng gói kĩ.",
                style: TextStyle(
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
            Row(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset("assets/images/sp1.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset("assets/images/sp1.png"),
              ),
            ]),
            Row(children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Minh Hiếu",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.check, color: Colors.greenAccent),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Đã mua hàng",
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ]),
            TextButton(
              onPressed: () {},
              //   => Navigator.push(
              //   context ,
              //   MaterialPageRoute(
              //     builder: (context) => const SeeReviewScreen(),
              //   ),
              // ),
              child: const Text(
                "Xem tất cả đánh giá >",
                style: TextStyle(fontSize: 20, color: Colors.blue),
              ),
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            Row(children: [
              //Mua hàng và thêm vào giỏ hàng
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 20, 0),
                child: Expanded(
                  child: Column(children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {},
                      child: const Text('Mua hàng',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Expanded(
                  child: Column(children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {},
                      child: const Text('Thêm vào giỏ hàng',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ]),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    //Thanh công cụ
    return AppBar(
      backgroundColor: const Color(0xFF273c75),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          color: Colors.white,
          onPressed: () {},
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
