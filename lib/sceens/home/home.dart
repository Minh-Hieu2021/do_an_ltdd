// ignore_for_file: unused_local_variable, sized_box_for_whitespace

import 'package:do_an_ltdd/components/bottom_nabar.dart';
import 'package:do_an_ltdd/sceens/home/components/body.dart';

import 'package:flutter/material.dart';
import 'package:do_an_ltdd/constanst.dart';

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
      child: const Scaffold(
        backgroundColor: kBackgroundColor,
        body: Body(),
        bottomNavigationBar: MyBottomNavBar(),
      ),
    );
  }
}
