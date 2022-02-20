import 'package:do_an_ltdd/models/category_api.dart';
import 'package:flutter/material.dart';
import 'package:do_an_ltdd/constanst.dart';

class ItemCardc extends StatelessWidget {
  final Categorys product;
  final Function() press;
  const ItemCardc({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);
  String daoChuoi(String chuoi) {
    String kq = "";
    for (int i = chuoi.length; i > 0; i--) {
      kq += chuoi.substring(i - 1, i);
    }
    return kq;
  }

  String catchuoi(int c) {
    String chuoi = c.toString();
    String kq = "";
    for (int i = chuoi.length; i > 0; i = i - 3) {
      if (i <= 3) {
        return kq + daoChuoi(chuoi.substring(0, i));
      }
      if (i == chuoi.length) {
        kq += chuoi.substring(i - 3, chuoi.length);
      }
      kq += chuoi.substring(i, chuoi.length) + ',';
    }
    return kq;
  }

  @override
  Widget build(BuildContext context) {
    String gianguoc = catchuoi(product.price);
    String gia = daoChuoi(gianguoc);
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.network('http://10.0.2.2:8000/${product.image}'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text(
              product.title,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Text(
            gia + ' VND',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
