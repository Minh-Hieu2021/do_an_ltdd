import 'package:do_an_ltdd/sceens/account_information/account_information.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class update_SexScreen extends StatelessWidget {
  const update_SexScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF273c75),
          elevation: 0,
          leading: IconButton(
            icon:
                SvgPicture.asset('assets/icons/back.svg', color: Colors.white),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Account_InformationScreen())),
          ),
          title: const Text(
            "Thông tin tài khoản",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          constraints: const BoxConstraints.expand(),
          color: const Color(0xFF273c75),
          child: ListView(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
                child: Text(
                  "Giới tính",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: TextField(
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: "Nam",
                    labelStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

              // Row(children: [
              //   Padding(
              //     padding: EdgeInsets.all(10),
              //     child: Text(
              //       "Tên",
              //       style: TextStyle(
              //         color: Colors.black,
              //         fontSize: 30,
              //       ),
              //     ),
              //   ),

              //   Padding(
              //     padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
              //     child: TextField(
              //       style: TextStyle(
              //         fontSize: 20,
              //         color: Colors.white,
              //       ),
              //       decoration: InputDecoration(
              //         labelText: "0388158661",
              //         labelStyle: TextStyle(
              //           color: Colors.grey,
              //           fontSize: 20,
              //         ),
              //       ),
              //     ),
              //   ),
              // ]),

              Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.red,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Account_InformationScreen())),
                    child: const Text(
                      "Xác nhận",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
