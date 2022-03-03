import 'package:do_an_ltdd/models/account_model.dart';
import 'package:do_an_ltdd/network/network_request.dart';

import 'package:do_an_ltdd/sceens/account_information/update_password.dart';
import 'package:flutter/material.dart';

class Account_InformationScreen extends StatefulWidget {
  const Account_InformationScreen({Key key}) : super(key: key);

  @override
  State<Account_InformationScreen> createState() =>
      _Account_InformationScreenState();
}

class _Account_InformationScreenState extends State<Account_InformationScreen> {
  TextEditingController tenController = TextEditingController();

  TextEditingController sdtController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController diaChiController = TextEditingController();
  @override
  void initState() {
    super.initState();
    tenController.text = AccountStatic.fullName;
    sdtController.text = AccountStatic.phone;
    emailController.text = AccountStatic.email;
    diaChiController.text = AccountStatic.address;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF273c75),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Chỉnh sửa thông tin tài khoản",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
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
                "Tên",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                width: double.infinity,
                height: 35,
                child: TextField(
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  controller: tenController,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Text(
                "Số điện thoại",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                width: double.infinity,
                height: 35,
                // ignore: deprecated_member_use
                child: TextField(
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  controller: sdtController,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Text(
                "E-mail",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                width: double.infinity,
                height: 35,
                // ignore: deprecated_member_use
                child: TextField(
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  controller: emailController,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: Text(
                "Địa chỉ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: SizedBox(
                width: double.infinity,
                height: 35,
                // ignore: deprecated_member_use
                child: TextField(
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  controller: diaChiController,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
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
                    if (tenController.text != AccountStatic.fullName ||
                        sdtController.text != AccountStatic.phone ||
                        emailController.text != AccountStatic.email ||
                        diaChiController.text != AccountStatic.address) {
                      NetworkRequest.suaThongTinTaiKhoan(
                              AccountStatic.id,
                              tenController.text,
                              sdtController.text,
                              emailController.text,
                              diaChiController.text)
                          .then((data) {
                        if (data == 'Sửa thành công') {
                          AccountStatic.address = diaChiController.text;
                          AccountStatic.fullName = tenController.text;
                          AccountStatic.phone = sdtController.text;
                          AccountStatic.email = emailController.text;
                        }
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
                    }
                  },
                  child: const Text(
                    "Cập nhật",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => update_PassScreen())),
                  child: const Text(
                    "Chỉnh sửa mật khẩu",
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
