import 'package:do_an_ltdd/models/account_model.dart';
import 'package:do_an_ltdd/sceens/account_information/account_information.dart';
import 'package:do_an_ltdd/sceens/cart/cart.dart';
import 'package:do_an_ltdd/sceens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:do_an_ltdd/constanst.dart';
import 'package:do_an_ltdd/models/product_model.dart';

class BodyProflie extends StatefulWidget {
  BodyProflie({Key key}) : super(key: key);

  @override
  State<BodyProflie> createState() => _BodyProflieState();
}

class _BodyProflieState extends State<BodyProflie> {
  String ten = '';

  void layTen() {
    ten = AccountStatic.fullName;
  }

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
    layTen();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Text(''),
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        title: const Text('Profile'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartSceen()),
              );
            },
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(50), // Image radius
                  child:
                      Image.asset('assets/images/sp1.png', fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                ten,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Account_InformationScreen()));
                },
                icon: const Icon(Icons.edit),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => logInScreen()));
                },
                icon: const Icon(Icons.logout),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.card_giftcard,
                      size: 35,
                    ),
                  ),
                  const Text('Đang xử lí'),
                ],
              ),
              const SizedBox(
                width: 45,
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.local_shipping_rounded,
                        size: 35,
                      )),
                  const Text('Đang giao'),
                ],
              ),
              const SizedBox(
                width: 45,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.inventory_outlined,
                      size: 35,
                    ),
                  ),
                  const Text('Đã giao'),
                ],
              ),
              const SizedBox(
                width: 45,
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.cancel_presentation,
                      size: 35,
                    ),
                  ),
                  const Text('Đã hủy'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
