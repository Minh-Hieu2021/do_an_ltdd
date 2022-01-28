import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: 48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        // boxShadow: const [
        //   BoxShadow(
        //     offset: Offset(0, 1000), // khoảng cách
        //     blurRadius: 0.1, // độ mờ
        //   ),
        // ],
      ),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                border: OutlineInputBorder(),
                hintText: 'Bạn tìm gì hôm nay?',
                fillColor: Colors.white,
                filled: true,
              ),
            ),
          ),
          SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
