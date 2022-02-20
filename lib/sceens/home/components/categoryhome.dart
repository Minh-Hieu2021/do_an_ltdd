import 'package:do_an_ltdd/sceens/category/category.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Categoryhome extends StatelessWidget {
  Categoryhome({Key key}) : super(key: key);
  List<String> tabControl = [
    'Asus',
    'Acer',
    'Macbook',
    'MSI',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: tabControl.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => CategorySceen(),
                settings: RouteSettings(
                  arguments: tabControl[index],
                ),
              ),
            );
          },
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              color: Colors.white,
            ),
            height: 25,
            width: 100,
            child: Center(
              child: Text(
                tabControl[index],
                style: const TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
