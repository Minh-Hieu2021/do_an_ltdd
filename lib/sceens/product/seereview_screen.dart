
import 'package:do_an_ltdd/constanst.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// ignore: duplicate_import
import 'package:do_an_ltdd/constanst.dart';
import 'package:do_an_ltdd/models/product_model.dart';
import 'package:do_an_ltdd/sceens/product/detailproduct.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SeeReviewScreen extends StatelessWidget {
  final Product product;

  const SeeReviewScreen({
    Key ?key,
     required this.product,
  }) : super(key: key);

  BuildContext? get context => null;

  




  @override 
  Widget build(BuildContext context){
  return MaterialApp( home: Scaffold(
    appBar: AppBar(
      backgroundColor: const Color(0xFF273c75),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg',color: Colors.black),
        onPressed: ()  
        => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/search.svg', color: Colors.black,),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset('assets/icons/cart.svg', color: Colors.black,),
          onPressed: () {},
        ),
        const SizedBox(width: 10),
      ],
    ),
    body:  Center( 
      child: ListView(
        children: <Widget>[
          Column( //Xem tất cả đánh giá
            children: <Widget>[
            Column(children: <Widget>[
              Row(children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  // ignore: prefer_const_constructors
                  onPressed: () {},
                  // => Navigator.push(context,MaterialPageRoute(builder: (context) =>  DetailsScreen(product: product))),
                  child: Image.asset('assets/images/spm1.png'),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Minh Hiếu",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5),
                child: Icon(Icons.check, color: Colors.greenAccent),
                ),
            
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "13 ngày trước",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
              Row(children: const <Widget>[ // 5sao Cực kì hài lòng
                Padding(
                  padding: EdgeInsets.only(left: 10), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ), 
                Padding(
                  padding: EdgeInsets.all(5)
                ),
                Text(
                  "Cực kì hài lòng", 
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Máy đẹp, chất lượng tốt, đóng gói kĩ.",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),

              Row(children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  // ignore: prefer_const_constructors
                  onPressed: () {},
                  // => Navigator.push(context,MaterialPageRoute(builder: (context) =>  DetailsScreen(product: product))),
                  child: Image.asset('assets/images/spm1.png'),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Đăng Quang",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5),
                child: Icon(Icons.check, color: Colors.greenAccent),
                ),
            
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "13 ngày trước",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
              Row(children: const <Widget>[ // 5sao Cực kì hài lòng
                Padding(
                  padding: EdgeInsets.only(left: 10), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ), 
                Padding(
                  padding: EdgeInsets.all(5)
                ),
                Text(
                  "Cực kì hài lòng", 
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Máy đẹp, chất lượng tốt, đóng gói kĩ.",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),

              Row(children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  // ignore: prefer_const_constructors
                  onPressed: () {},
                  // => Navigator.push(context,MaterialPageRoute(builder: (context) =>  DetailsScreen(product: product))),
                  child: Image.asset('assets/images/spm1.png'),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Minh Hiếu",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5),
                child: Icon(Icons.check, color: Colors.greenAccent),
                ),
            
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "13 ngày trước",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
              Row(children: const <Widget>[ // 5sao Cực kì hài lòng
                Padding(
                  padding: EdgeInsets.only(left: 10), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ), 
                Padding(
                  padding: EdgeInsets.all(5)
                ),
                Text(
                  "Cực kì hài lòng", 
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Máy đẹp, chất lượng tốt, đóng gói kĩ.",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),

              Row(children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  // ignore: prefer_const_constructors
                  onPressed: (){},
                  //onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>  DetailsScreen(product: product))),
                  child: Image.asset('assets/images/spm1.png'),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Minh Hiếu",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5),
                child: Icon(Icons.check, color: Colors.greenAccent),
                ),
            
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "13 ngày trước",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
              Row(children: const <Widget>[ // 5sao Cực kì hài lòng
                Padding(
                  padding: EdgeInsets.only(left: 10), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ), 
                Padding(
                  padding: EdgeInsets.all(5)
                ),
                Text(
                  "Cực kì hài lòng", 
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Máy đẹp, chất lượng tốt, đóng gói kĩ.",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),

              Row(children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  // ignore: prefer_const_constructors
                  onPressed: (){},
                  //onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>  DetailsScreen(product: product))),
                  child: Image.asset('assets/images/spm1.png'),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Minh Hiếu",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5),
                child: Icon(Icons.check, color: Colors.greenAccent),
                ),
            
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "13 ngày trước",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
              Row(children: const <Widget>[ // 5sao Cực kì hài lòng
                Padding(
                  padding: EdgeInsets.only(left: 10), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ), 
                Padding(
                  padding: EdgeInsets.all(5)
                ),
                Text(
                  "Cực kì hài lòng", 
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Máy đẹp, chất lượng tốt, đóng gói kĩ.",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),

              Row(children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  // ignore: prefer_const_constructors
                  onPressed: (){},
                  //onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>  DetailsScreen(product: product))),
                  child: Image.asset('assets/images/spm1.png'),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Minh Hiếu",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5),
                child: Icon(Icons.check, color: Colors.greenAccent),
                ),
            
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "13 ngày trước",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
              Row(children: const <Widget>[ // 5sao Cực kì hài lòng
                Padding(
                  padding: EdgeInsets.only(left: 10), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ), 
                Padding(
                  padding: EdgeInsets.all(5)
                ),
                Text(
                  "Cực kì hài lòng", 
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Máy đẹp, chất lượng tốt, đóng gói kĩ.",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),

              Row(children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  // ignore: prefer_const_constructors
                  onPressed: (){},
                  //onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>  DetailsScreen(product: product))),
                  child: Image.asset('assets/images/spm1.png'),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Minh Hiếu",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5),
                child: Icon(Icons.check, color: Colors.greenAccent),
                ),
            
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "13 ngày trước",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
              Row(children: const <Widget>[ // 5sao Cực kì hài lòng
                Padding(
                  padding: EdgeInsets.only(left: 10), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ), 
                Padding(
                  padding: EdgeInsets.all(5)
                ),
                Text(
                  "Cực kì hài lòng", 
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Máy đẹp, chất lượng tốt, đóng gói kĩ.",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),

              Row(children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  // ignore: prefer_const_constructors
                  onPressed: (){},
                  //onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>  DetailsScreen(product: product))),
                  child: Image.asset('assets/images/spm1.png'),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Minh Hiếu",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5),
                child: Icon(Icons.check, color: Colors.greenAccent),
                ),
            
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "13 ngày trước",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
              Row(children: const <Widget>[ // 5sao Cực kì hài lòng
                Padding(
                  padding: EdgeInsets.only(left: 10), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ), 
                Padding(
                  padding: EdgeInsets.all(5)
                ),
                Text(
                  "Cực kì hài lòng", 
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Máy đẹp, chất lượng tốt, đóng gói kĩ.",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),

              Row(children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  // ignore: prefer_const_constructors
                  onPressed: (){},
                  //onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>  DetailsScreen(product: product))),
                  child: Image.asset('assets/images/spm1.png'),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Minh Hiếu",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5),
                child: Icon(Icons.check, color: Colors.greenAccent),
                ),
            
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "13 ngày trước",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
              Row(children: const <Widget>[ // 5sao Cực kì hài lòng
                Padding(
                  padding: EdgeInsets.only(left: 10), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ), 
                Padding(
                  padding: EdgeInsets.all(5)
                ),
                Text(
                  "Cực kì hài lòng", 
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Máy đẹp, chất lượng tốt, đóng gói kĩ.",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),

              Row(children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  // ignore: prefer_const_constructors
                  onPressed: (){},
                  //onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) =>  DetailsScreen(product: product))),
                  child: Image.asset('assets/images/spm1.png'),
                ),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Minh Hiếu",
                    style: TextStyle(
                      color: kTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.all(5),
                child: Icon(Icons.check, color: Colors.greenAccent),
                ),
            
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "13 ngày trước",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ]),
              Row(children: const <Widget>[ // 5sao Cực kì hài lòng
                Padding(
                  padding: EdgeInsets.only(left: 10), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ),
                Padding(
                  padding: EdgeInsets.all(0), 
                  child: Icon(Icons.star, color: (Colors.yellow),),
                ), 
                Padding(
                  padding: EdgeInsets.all(5)
                ),
                Text(
                  "Cực kì hài lòng", 
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ]),
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "Máy đẹp, chất lượng tốt, đóng gói kĩ.",
                  style: TextStyle(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ), 
            ],),
            ],
          ),
        ],
      ),
    ),
  ),);
  }
}