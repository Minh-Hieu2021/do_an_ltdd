import 'package:flutter/material.dart';
import 'package:do_an_ltdd/components/bottom_nabar.dart';
import 'package:do_an_ltdd/components/recomend_plant_card.dart';
import '../../../constanst.dart';
import '../../components/search.dart';

class CategorySceen extends StatefulWidget {
  const CategorySceen({Key? key}) : super(key: key);
  @override
  State<CategorySceen> createState() => _CategorySceenState();
}

class _CategorySceenState extends State<CategorySceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  RecomendPlantCard(
                    image: "assets/images/sp1.png",
                    title: "ssss",
                    price: 440,
                    press: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => DetailsScreen(),
                      //   ),
                      // );
                    },
                  ),
                  RecomendPlantCard(
                    image: "assets/images/sp1.png",
                    title: "ss",
                    price: 440,
                    press: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => DetailsScreen(),
                      //   ),
                      // );
                    },
                  ),
                  RecomendPlantCard(
                    image: "assets/images/sp1.png",
                    title: "ss",
                    price: 440,
                    press: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => DetailsScreen(),
                      //   ),
                      // );
                    },
                  ),
                  RecomendPlantCard(
                    image: "assets/images/sp1.png",
                    title: "ss",
                    price: 440,
                    press: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => DetailsScreen(),
                      //   ),
                      // );
                    },
                  ),
                  RecomendPlantCard(
                    image: "assets/images/sp1.png",
                    title: "ss",
                    price: 440,
                    press: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => DetailsScreen(),
                      //   ),
                      // );
                    },
                  ),
                  RecomendPlantCard(
                    image: "assets/images/sp1.png",
                    title: "ss",
                    price: 440,
                    press: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => DetailsScreen(),
                      //   ),
                      // );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
