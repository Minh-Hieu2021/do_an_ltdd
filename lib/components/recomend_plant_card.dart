import 'package:flutter/material.dart';
import 'package:do_an_ltdd/constanst.dart';

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Container(
      height: 300,
      color: Colors.white,
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: 177, //size.width * 0.43,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press(),
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              // decoration: BoxDecoration(
              //   color: Colors.white,
              //   // borderRadius: const BorderRadius.only(
              //   //   bottomLeft: Radius.circular(10),
              //   //   bottomRight: Radius.circular(10),
              //   // ),
              //   // boxShadow: [
              //   //   BoxShadow(
              //   //     offset: const Offset(0, 10),
              //   //     blurRadius: 50,
              //   //     color: kPrimaryColor.withOpacity(0.23),
              //   //   ),
              //   // ],
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n", //.toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$price vnd".toUpperCase(),
                          style: const TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
