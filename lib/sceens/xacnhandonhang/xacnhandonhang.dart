import 'package:do_an_ltdd/network/network_request.dart';
import 'package:flutter/material.dart';
import 'package:do_an_ltdd/models/cart_api.dart';
import '../../constanst.dart';

class XacnhandonhangSceen extends StatefulWidget {
  const XacnhandonhangSceen({Key key}) : super(key: key);
  @override
  State<XacnhandonhangSceen> createState() => _XacnhandonhangSceenState();
}

class _XacnhandonhangSceenState extends State<XacnhandonhangSceen> {
  bool isChecked;
  int tongtien = 0;
  int soLuongSPMua = 0;
  String group = "phuongthucthanhtoan";
  List<Cart> carts = [];

  @override
  void initState() {
    super.initState();
    NetworkRequest.fetchCart().then((data) {
      setState(() {
        carts = data;
      });
    });
  }

  int tongTien() {
    int result = 0;
    for (int i = 0; i < carts.length; i++) {
      if (carts[i].status) {
        result += carts[i].price * carts[i].quantity;
      }
    }
    return result;
  }

  bool kiemTraNamNhuan(var n) {
    return (((n % 4 == 0) && (n % 100 != 0)) || (n % 400 == 0));
  }

  int soNgayCuaThang(var thang, var nam) {
    switch (thang) {
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
        return 31;
      case 2:
        return kiemTraNamNhuan(nam) ? 29 : 28;
      default:
        return 30;
    }
  }

  String ngaynhanhang() {
    String result = "";
    DateTime date = DateTime.now();
    var songaycuathang = soNgayCuaThang(date.month, date.year);
    if (date.day + 10 > songaycuathang) {
      var songayconlaitrongthang = songaycuathang - date.day;
      result = (10 - songayconlaitrongthang).toString() +
          ' Tháng ' +
          (date.month + 1).toString() +
          ' - ' +
          (15 - songayconlaitrongthang).toString() +
          ' Tháng ' +
          (date.month + 1).toString();
    } else {
      result = (date.day + 10).toString() + 'Tháng ' + date.month.toString();
    }
    return result;
  }

  Widget header() {
    return Column(
      children: [
        Row(
          children: const [
            Icon(Icons.fmd_good_rounded),
            Text('Nguyễn Văn Đức | 0986616345', style: TextStyle(fontSize: 20))
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
              'MC6H+73 Mỹ Phong, Mỹ Tho, Tiền Giang, Xã Mỹ Phong,Thành phố Mỹ Tho, Tiền Giang',
              style: TextStyle(fontSize: 15)),
        ),
        Container(
          height: 8,
          color: Colors.grey[300],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    tongtien = tongTien();
    var ngnhanhang = ngaynhanhang();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        title: const Text('Xác nhận đơn hàng'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          header(),
          Container(
            margin: const EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Row(
              children: const [
                Text(
                  "Hình thức giao hàng",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            color: Colors.deepOrange,
            child: Column(
              children: [
                Row(
                  children: const [
                    Text("Vận chuyển nhanh quốc tế"),
                  ],
                ),
                Row(
                  children: const [
                    Text("Sandard Express"),
                  ],
                ),
                Row(
                  children: [
                    Text('Nhận hàng vào $ngnhanhang'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 8,
            color: Colors.grey[300],
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Row(
              children: const [
                Text(
                  "Chọn phương thức thanh toán",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Thanh toán khi nhận hàng'),
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Radio<String>(
                value: 'nhanhang',
                groupValue: group,
                onChanged: (String value) {
                  setState(() {
                    group = value;
                  });
                },
              ),
            ),
          ),
          ListTile(
            title: const Text('Thanh toán trực tuyến'),
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Radio<String>(
                value: 'tructuyen',
                groupValue: group,
                onChanged: (String value) {
                  setState(() {
                    group = value;
                  });
                },
              ),
            ),
          ),
          Container(
            height: 8,
            color: Colors.grey[300],
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Tạm tính'),
                Text('$tongtien VND'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Phí vận chuyển'),
                Text('20000 VND'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Khuyến mãi vận chuyển'),
                Text('20000 VND'),
              ],
            ),
          ),
          Container(
            height: 8,
            color: Colors.grey[300],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Tổng cộng'),
                Text('$tongtien VND'),
              ],
            ),
          ),
          Container(
            height: 8,
            color: Colors.grey[300],
          ),
        ],
      ),
      bottomNavigationBar: _MyBottomNavBar(),
    );
  }

  Widget _CartCounter(int index) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: () {
            if (carts[index].quantity > 1) {
              setState(() {
                carts[index].quantity--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            carts[index].quantity.toString().padLeft(2, "0"),
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              carts[index].quantity++;
            });
          },
        ),
      ],
    );
  }

  Widget _MyBottomNavBar() {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: ListTile(
        title: const Text('Tổng cộng'),
        subtitle: Text(
          '$tongtien VND',
          style: const TextStyle(color: Colors.red),
        ),
        trailing: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            onPrimary: Colors.white,
          ),
          child: const Text('Đặt hàng'),
        ),
      ),
    );
  }
}
