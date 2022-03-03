// ignore_for_file: prefer_const_constructors

// ignore: avoid_web_libraries_in_flutter
import 'package:do_an_ltdd/models/account_model.dart';
import 'package:do_an_ltdd/sceens/home/home.dart';
import 'package:do_an_ltdd/sceens/login/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:do_an_ltdd/network/network_request.dart';

class logInScreen extends StatefulWidget {
  logInScreen({Key key}) : super(key: key);

  @override
  State<logInScreen> createState() => _logInScreenState();
}

class _logInScreenState extends State<logInScreen> {
  bool _showPass = false;

  TextEditingController _userController = TextEditingController();

  TextEditingController _passController = TextEditingController();

  String dangNhap = '';
  var _userErr = "Tài khoản không hợp lệ";

  var _passErr = "Mật khẩu phải 6 ký tự trở lên";

  var _userInvalid = false;

  var _passInvalid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          constraints: const BoxConstraints.expand(),
          color: const Color(0xFF273c75),
          child: ListView(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
                child: Text(
                  "Hello",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  "Đăng nhập tài khoản đã có",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Text(
                  "Hoặc tạo tài khoản mới",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: TextField(
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  controller: _userController,
                  decoration: InputDecoration(
                    labelText: "Tài khoản",
                    errorText: _userInvalid ? _userErr : null,
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  obscureText: true,
                  controller: _passController,
                  decoration: InputDecoration(
                    labelText: "Mật khẩu",
                    errorText: _passInvalid ? _passErr : null,
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Text(dangNhap, style: TextStyle(color: Colors.red, fontSize: 20)),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                      if (_userController.text == '' ||
                          _passController.text == '') {
                        setState(() {
                          dangNhap = "Đăng nhập thất bại";
                        });
                      } else {
                        NetworkRequest.fetchLogin(
                                _userController.text, _passController.text)
                            .then((data) {
                          AccountStatic.id = data[0].id;
                          AccountStatic.address = data[0].address;
                          AccountStatic.fullName = data[0].fullName;
                          AccountStatic.phone = data[0].phone;
                          AccountStatic.email = data[0].email;
                          if (data != 0) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeSceen()));
                          } else {
                            setState(() {
                              dangNhap = "Đăng nhập thất bại";
                            });
                          }
                        });
                      }
                    },
                    child: const Text(
                      "Đăng nhập",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),

              // ignore: deprecated_member_use
              FlatButton(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text(
                  "Đăng ký tài khoản mới",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontSize: 15,
                  ),
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const signUpScreen())),
              ),

              const Divider(
                height: 50,
                thickness: 2,
                indent: 0,
                endIndent: 0,
                color: Colors.white,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/facebook.svg",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/google.svg",
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/zalo.svg",
                      height: 50,
                      width: 50,
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
