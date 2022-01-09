import 'package:flutter/material.dart';
import 'package:do_an_ltdd/sceens/cart/cart.dart';
import 'package:do_an_ltdd/sceens/home/home.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import '../constanst.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);
  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10), // khoảng cách
            blurRadius: 10, //độ mờ
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeSceen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const CartSceen()),
              // );
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_box),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
