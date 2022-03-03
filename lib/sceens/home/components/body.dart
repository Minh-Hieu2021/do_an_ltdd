import 'dart:convert';

import 'package:do_an_ltdd/models/product_api.dart';
import 'package:do_an_ltdd/network/network_request.dart';
import 'package:do_an_ltdd/sceens/product/detailproduct.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:do_an_ltdd/components/item_card.dart';
import 'categoryhome.dart';
import 'package:do_an_ltdd/models/img_model.dart';
import 'package:do_an_ltdd/components/search.dart';
import 'package:do_an_ltdd/sceens/cart/cart.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:http/http.dart' as http;

class BodyHome extends StatefulWidget {
  BodyHome({Key key}) : super(key: key);

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
  List<Products> products = [];

  @override
  void initState() {
    super.initState();
    NetworkRequest.fetchProduct().then((data) {
      setState(() {
        products = data;
      });
    });
  }

  double demSoHang() {
    double result = 0;
    for (int i = 1; i <= products.length; i++) {
      if (i % 2 != 0) {
        result += 310;
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                width: 40,
              ),
              SizedBox(
                width: 100,
                height: 80,
                child: Image.asset(imgs[1].imageUrl),
              ),
              SizedBox(
                child: IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CartSceen()),
                    );
                  },
                ),
              ),
            ],
          ),
          const Search(),
          const SizedBox(
            height: 20,
          ),
          Categoryhome(),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 160,
            width: 400,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(banners[index].imageUrl);
              },
              autoplay: true,
              itemCount: 3,
              viewportFraction: 0.8,
              scale: 0.9,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Sản phẩm gợi ý",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: demSoHang(),
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.all(10),
                      child: ItemCard(
                        product: products[index],
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(),
                              ));
                        },
                      ),
                    )),
          ),
          const Text(
            "Sản phẩm bán chạy",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: demSoHang(),
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.all(10),
                      child: ItemCard(
                        product: products[index],
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
