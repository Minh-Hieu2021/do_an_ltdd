import 'package:do_an_ltdd/sceens/account_information/update_Bankaccount.dart';
import 'package:do_an_ltdd/sceens/account_information/update_Birthday.dart';
import 'package:do_an_ltdd/sceens/account_information/update_Email.dart';
import 'package:do_an_ltdd/sceens/account_information/update_Name.dart';
import 'package:do_an_ltdd/sceens/account_information/update_Passworf.dart';
import 'package:do_an_ltdd/sceens/account_information/update_Phone.dart';
import 'package:do_an_ltdd/sceens/account_information/update_Sex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: camel_case_types
class Account_InformationScreen extends StatelessWidget{
  const Account_InformationScreen({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF273c75),
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset('assets/icons/back.svg',color: Colors.white),
            onPressed: () {},
          ),
          title: const Text(
            "Thông tin tài khoản", 
            style: TextStyle(
              color: Colors.white, fontSize: 30,
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
                    fontSize: 30,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: double.infinity,
                  height: 35,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () => Navigator.push(context ,MaterialPageRoute(builder: (context) => const update_NameScreen())),
                    child: const Text(
                      "Phạm Đăng Quang ->",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
              ),


              const Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 20), 
                child: Text(
                  "Mật khẩu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: double.infinity,
                  height: 35,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () => Navigator.push(context ,MaterialPageRoute(builder: (context) => const update_PassScreen())),
                    child: const Text(
                      "******** ->",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 20), 
                child: Text(
                  "Số điện thoại",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: double.infinity,
                  height: 35,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () => Navigator.push(context ,MaterialPageRoute(builder: (context) => const update_PhoneScreen())),
                    child: const Text(
                      "0388158661 ->",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 20), 
                child: Text(
                  "E-mail",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: double.infinity,
                  height: 35,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () => Navigator.push(context ,MaterialPageRoute(builder: (context) => const update_EmailScreen())),
                    child: const Text(
                      "0306191352@caothang.... ->",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
              ),

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
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: double.infinity,
                  height: 35,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () => Navigator.push(context ,MaterialPageRoute(builder: (context) => const update_SexScreen())),
                    child: const Text(
                      "Nam ->",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
              ),


              const Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 20), 
                child: Text(
                  "Ngày sinh",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: double.infinity,
                  height: 35,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () => Navigator.push(context ,MaterialPageRoute(builder: (context) => const update_BirthdayScreen())),
                    child: const Text(
                      "29/08/2001 ->",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 20), 
                child: Text(
                  "Tài khoản ngân hàng",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: double.infinity,
                  height: 35,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.white,
                    onPressed: () => Navigator.push(context ,MaterialPageRoute(builder: (context) => const update_BankaccountScreen())),
                    child: const Text(
                      "->",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
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