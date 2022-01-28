import 'package:flutter/material.dart';
import 'package:do_an_ltdd/constanst.dart';

import '../../../constanst.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  num itemCounter = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
            if (itemCounter > 1) {
              setState(() {
                itemCounter--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            itemCounter.toString().padLeft(2, "0"),
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            setState(() {
              itemCounter++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOulineButton({Function() press, IconData icon}) {
    return SizedBox(
      height: 40,
      width: 32,
      child: OutlinedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
        ),
        child: Icon(icon),
        onPressed: press,
      ),
    );
  }
}
