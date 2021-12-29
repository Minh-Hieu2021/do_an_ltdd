// ignore_for_file: unused_local_variable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:do_an_ltdd/components/bottom_nabar.dart';
import 'package:do_an_ltdd/components/recomend_plant_card.dart';
import 'package:do_an_ltdd/constanst.dart';
import 'package:do_an_ltdd/models/img_model.dart';
import 'package:do_an_ltdd/models/product_model.dart';
import 'components/categoryhome.dart';
import 'package:do_an_ltdd/components/search.dart';

class HomeSceen extends StatefulWidget {
  const HomeSceen({Key? key}) : super(key: key);
  @override
  State<HomeSceen> createState() => _HomeSceenState();
}

class _HomeSceenState extends State<HomeSceen> {
  _Title(String title) {
    return Container(
      //color: Colors.red,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  _RecomendPlantCard(int index) {
    return RecomendPlantCard(
      image: products[index].image,
      title: products[index].title,
      price: products[index].price,
      press: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => DetailsScreen(),
        //   ),
        // );
      },
    );
  }

  Widget myWidget(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return _RecomendPlantCard(index);
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final String image, title, country;
    final int price;
    Size size = MediaQuery.of(context).size;
    final Function press;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: kBackgroundColor,
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container(
                    //     width: 100,
                    //     height: 80,
                    //     child: Image.asset(imgs[0].imageUrl)),
                    Container(
                        width: 100,
                        height: 80,
                        child: Image.asset(imgs[1].imageUrl)),
                    // const SizedBox(
                    //   width: 10,
                    // ),
                    // const SizedBox(
                    //   width: 10,
                    // ),
                    // const SizedBox(
                    //   width: 10,
                    // ),
                  ],
                ),
                Search(),
                const SizedBox(
                  height: 20,
                ),
                Container(
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
                  height: 10,
                ),
                _Title('Danh mục sản phẩm'),
                const Categoryhome(),
                _Title('Sản phẩm mới'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      _RecomendPlantCard(0),
                      _RecomendPlantCard(1),
                      _RecomendPlantCard(2),
                    ],
                  ),
                ),
                _Title('Sản phẩm thịnh hành'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      _RecomendPlantCard(3),
                      _RecomendPlantCard(4),
                      _RecomendPlantCard(5),
                    ],
                  ),
                ),
                // _Title('Sản phẩm gợi ý'),
                // myWidget(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const MyBottomNavBar(),
      ),
    );
  }
}
