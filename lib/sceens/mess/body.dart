import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:do_an_ltdd/constanst.dart';
import 'package:do_an_ltdd/components/search.dart';

class BodyMess extends StatefulWidget {
  const BodyMess({Key key}) : super(key: key);
  @override
  State<BodyMess> createState() => _BodyMessState();
}

class _BodyMessState extends State<BodyMess> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 40),
          const Search(),
          const SizedBox(height: 20),
          Container(
            height: 125,
            color: kBackgroundColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Sắp xếp theo',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background (button) color
                        onPrimary: Colors.black, // foreground (text) color
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text("  Bán chạy  "),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background (button) color
                        onPrimary: Colors.black, // foreground (text) color
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text("Giá tăng dần"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background (button) color
                        onPrimary: Colors.black, // foreground (text) color
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text("     Mới về     "),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background (button) color
                        onPrimary: Colors.black, // foreground (text) color
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text("Giá giảm dần"),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white, // background (button) color
                        onPrimary: Colors.black, // foreground (text) color
                      ),
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Text("Khuyến mãi  "),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
