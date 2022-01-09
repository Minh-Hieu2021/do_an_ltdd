import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:do_an_ltdd/components/item_card.dart';
import 'categoryhome.dart';
import 'package:do_an_ltdd/models/product_model.dart';
import 'package:do_an_ltdd/models/img_model.dart';
import 'package:do_an_ltdd/components/search.dart';
import 'package:do_an_ltdd/sceens/cart/cart.dart';
import 'package:card_swiper/card_swiper.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  double demSoHang() {
    double dem = 0;
    for (int i = 0; i <= products.length; i++) {
      if (i % 2 != 0) {
        dem += 0.44;
      }
    }
    return dem;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
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
              viewportFraction: 0.8, // 1 là bằng 1 row
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
            height: size.height * demSoHang(),
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
          const Text(
            "Sản phẩm bán",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: size.height * demSoHang(),
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
