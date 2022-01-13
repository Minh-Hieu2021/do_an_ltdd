import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:do_an_ltdd/constanst.dart';
import 'package:do_an_ltdd/models/product_model.dart';
import 'package:do_an_ltdd/sceens/product/detailproduct.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChildDetailScreen extends StatelessWidget {
  final Product product;

  const ChildDetailScreen({
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
        const Padding(
          padding:  EdgeInsets.fromLTRB(8, 14, 8, 8),
          child: Text(
            "Thông tin chi tiết ",
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
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
          Container(  
                  margin: EdgeInsets.all(0),  
                  child: Table(  
                    defaultColumnWidth: FixedColumnWidth(0),  
                    border: TableBorder.all(  
                        color: Colors.black,  
                        // style: BorderStyle.solid, 
                        width: 1),  
                    children: [    
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start, children:[Padding(padding: EdgeInsets.all(5),child: Text('CPU'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start, children:[Padding(padding: EdgeInsets.all(5),child: Text('Intel® Core™ i5-11400H Processor 2.7 GHz '))]),  
                      ]),  
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Màn hình'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('15.6-inch FHD'))]),  
                      ]),  
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('RAM'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('8GB DDR4 3200MHz'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Ổ cứng'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('512GB SSD M.2 PCIE G3X2, 1x slot M.2'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Card đồ hoạ'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('NVIDIA® GeForce RTX™ 3050 Laptop GPU + Intel® UHD Graphics'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Cổng giao tiếp'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('1x RJ45 LAN port \n1x USB Type C \n3x USB 3.2 Gen 1 Type-A \n1x 3.5mm Combo Audio Jack \n1x HDMI'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Audio'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('DTS:X® Ultra'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Bàn phím'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('1-Zone RGB'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Chuẩn LAN'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('10/100/1000/Gigabits Base T'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Chuẩn WIFI'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('802.11AC (2X2)'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Bluetooth'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('BT 5.0'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Webcam'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('HD 720p'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Hệ điều hành'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Windows 11 Home'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Pin'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('3 Cell 41WWHr'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Trọng lượng'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('2.3 kg'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Màu sắc'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Gun Metal'))]),  
                      ]),
                      TableRow( children: [  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('Kích thước'))]),  
                        Column(crossAxisAlignment: CrossAxisAlignment.start,children:[Padding(padding: EdgeInsets.all(5),child: Text('35.9 x 25.6 x 2.28 ~ 2.43 cm'))]),  
                      ]),
                    ],  
                  ),  
                ),
              
              ],),
    ),
  ),);
  }
}