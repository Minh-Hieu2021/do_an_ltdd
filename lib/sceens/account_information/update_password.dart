import 'package:do_an_ltdd/models/account_model.dart';
import 'package:do_an_ltdd/network/network_request.dart';
import 'package:do_an_ltdd/sceens/account_information/account_information.dart';
import 'package:flutter/material.dart';

class update_PassScreen extends StatefulWidget {
  const update_PassScreen({Key key}) : super(key: key);

  @override
  State<update_PassScreen> createState() => _update_PassScreenState();
}

class _update_PassScreenState extends State<update_PassScreen> {
  TextEditingController matKhauCuController = TextEditingController();

  TextEditingController matKhauMoiController = TextEditingController();

  TextEditingController matKhauMoiXacNhanController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF273c75),
        elevation: 0,
        title: const Text(
          "Thay đổi mật khẩu",
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
                "Mật khẩu hiện tại",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: TextField(
                enableSuggestions: false,
                showCursor: false,
                obscureText: true,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                controller: matKhauCuController,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Text(
                "Nhập mật khẩu mới",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: TextField(
                enableSuggestions: false,
                showCursor: false,
                obscureText: true,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                controller: matKhauMoiController,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Text(
                "Nhập lại mật khẩu mới",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: TextField(
                enableSuggestions: false,
                showCursor: false,
                obscureText: true,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                controller: matKhauMoiXacNhanController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  onPressed: () {
                    if (matKhauMoiController.text ==
                        matKhauMoiXacNhanController.text) {
                      NetworkRequest.suaMatKhau(
                              AccountStatic.id,
                              matKhauCuController.text,
                              matKhauMoiController.text)
                          .then((data) {
                        setState(() {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text(data),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                );
                              });
                        });
                      });
                    } else {
                      setState(() {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text('Mật khẩu mới không trùng nhau'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              );
                            });
                      });
                    }
                  },
                  child: const Text(
                    "Cập nhật",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
