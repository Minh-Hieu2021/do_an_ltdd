import 'package:do_an_ltdd/models/product_api.dart';
import 'package:do_an_ltdd/network/network_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:do_an_ltdd/components/item_card.dart';
import 'package:do_an_ltdd/constanst.dart';
import 'package:do_an_ltdd/components/search.dart';

class BodyCategory extends StatefulWidget {
  const BodyCategory({Key key}) : super(key: key);

  @override
  State<BodyCategory> createState() => _BodyCategoryState();
}

class _BodyCategoryState extends State<BodyCategory> {
  double demSoHang() {
    double result = 0;
    for (int i = 1; i <= productss.length; i++) {
      if (i % 2 != 0) {
        result += 310;
      }
    }
    return result;
  }

  List<Products> productss = [];

  @override
  void initState() {
    super.initState();
    NetworkRequest.fetchProduct().then((data) {
      setState(() {
        productss = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 40),
          const Search(),
          const SizedBox(height: 20),
          Container(
            height: 125,
            color: kBackgroundColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Sắp xếp theo',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background (button) color
                        onPrimary: Colors.black, // foreground (text) color
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text("  Bán chạy  "),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background (button) color
                        onPrimary: Colors.black, // foreground (text) color
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text("Giá tăng dần"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background (button) color
                        onPrimary: Colors.black, // foreground (text) color
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text("     Mới về     "),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background (button) color
                        onPrimary: Colors.black, // foreground (text) color
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text("Giá giảm dần"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background (button) color
                        onPrimary: Colors.black, // foreground (text) color
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text("Khuyến mãi  "),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: demSoHang(),
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: productss.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.all(10),
                      child: ItemCard(
                        product: productss[index],
                        press: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) =>
                          //           DetailsScreen(product: products[index]),
                          //     ));
                        },
                      ),
                    )),
          ),
        ],
      ),
    );
  }
}
