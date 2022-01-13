// ignore_for_file: unused_local_variable, sized_box_for_whitespace

// import 'package:do_an_ltdd/components/bottom_nabar.dart';
import 'package:do_an_ltdd/sceens/home/components/body.dart';
import 'package:do_an_ltdd/sceens/category/body.dart';
import 'package:do_an_ltdd/sceens/profile/body.dart';
import 'package:flutter/material.dart';
import 'package:do_an_ltdd/constanst.dart';
import 'package:do_an_ltdd/network/network_request.dart';
import 'package:do_an_ltdd/models/product_model.dart';

class HomeSceen extends StatefulWidget {
  const HomeSceen({Key? key}) : super(key: key);
  @override
  State<HomeSceen> createState() => _HomeSceenState();
}

class _HomeSceenState extends State<HomeSceen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _pages = <Widget>[
    BodyHome(productss: products),
    BodyCategory(),
    BodyProflie(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
        body: _pages.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          onTap: (index) {
            _onItemTapped(index);
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
