import 'package:do_an_ltdd/sceens/category/category.dart';
import 'package:flutter/material.dart';

class Categoryhome extends StatelessWidget {
  Categoryhome({Key? key}) : super(key: key);
  List<String> tabControl = [
    'Asus',
    'Acer',
    'Maccbook',
    'MSI',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
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
                builder: (BuildContext context) => const CategorySceen(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
              color: Colors.white,
            ),
            height: 50,
            width: 100,
            child: Center(
              child: Text(
                tabControl[index],
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
