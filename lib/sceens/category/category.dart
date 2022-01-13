import 'package:do_an_ltdd/sceens/category/body.dart';
import 'package:flutter/material.dart';
// import 'package:do_an_ltdd/components/bottom_nabar.dart';
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
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: BodyCategory(),
    );
  }
}
