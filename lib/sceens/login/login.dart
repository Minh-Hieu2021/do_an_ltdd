// ignore_for_file: prefer_const_constructors

// ignore: avoid_web_libraries_in_flutter
import 'package:do_an_ltdd/sceens/home/home.dart';
import 'package:do_an_ltdd/sceens/login/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class logInScreen extends StatelessWidget{
  logInScreen({Key? key}) : super(key: key);

  // ignore: prefer_final_fields, unused_field
  bool _showPass = false;

  // ignore: prefer_final_fields
  TextEditingController _userController = TextEditingController();

  // ignore: prefer_final_fields
  TextEditingController _passController = TextEditingController();

  // ignore: prefer_final_fields
  var _userErr = "Tài khoản không hợp lệ";

  // ignore: prefer_final_fields
  var _passErr = "Mật khẩu phải 6 ký tự trở lên";

  // ignore: prefer_final_fields
  var _userInvalid = false;

  // ignore: prefer_final_fields
  var _passInvalid = false;



  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
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
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: TextField(
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  controller: _userController,
                  decoration: InputDecoration(
                    labelText: "Tài khoản",
                    errorText: _userInvalid? _userErr : null,
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),     
              ),
              
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: TextField(
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                  obscureText: true,
                  controller: _passController,
                  decoration: InputDecoration(
                    labelText: "Mật khẩu",
                    errorText: _passInvalid? _passErr : null,
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
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
                    onPressed: () => Navigator.push(context ,MaterialPageRoute(builder: (context) => HomeSceen())),
                    child: const Text(
                      "Đăng nhập",
                      style: TextStyle(color: Colors.red, fontSize: 20),
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
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const signUpScreen())),
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
                    child: SvgPicture.asset("assets/icons/facebook.svg",height: 50, width: 50,),
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
                    child: SvgPicture.asset("assets/icons/google.svg",height: 50, width: 50,),
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
                    child: SvgPicture.asset("assets/icons/zalo.svg",height: 50, width: 50,),
                  )
                ],
              ),


              
            ],
          )
        ),
      ),
    );
  }


  // void onSignInClicked(){
  //   setState(() {
  //     if (_userController.text.length < 6 || !_userController.text.contains("@") ) {
  //       _userInvalid = true;
  //     } else {
  //       _userInvalid = false;
  //     }

  //     if (_passController.text.length < 6 ) {
  //       _passInvalid = true;
  //     } else {
  //       _passInvalid = false;
  //     }

  //     if (!_userInvalid && !_passInvalid)
  //     {
  //       Navigator.push(context ,MaterialPageRoute(builder: (context) => indexScreen()));
  //     }
  //   });
  // }
  

}