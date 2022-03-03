import 'package:do_an_ltdd/models/account_model.dart';
import 'package:do_an_ltdd/network/network_request.dart';
import 'package:do_an_ltdd/sceens/home/home.dart';
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
  int tongTien = 0;
  int soLuongSPMua = 0;
  String group = "phuongthucthanhtoan";
  List<Cart> carts = [];
  TextEditingController addressController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    NetworkRequest.fetchCart(AccountStatic.id).then((data) {
      setState(() {
        carts = data;
      });
    });
    addressController.text = AccountStatic.address;
    phoneController.text = AccountStatic.phone;
  }

  int tinhTongTien() {
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

  int tinhSoNgayCuaThang(var thang, var nam) {
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

  String tinhNgayNhanHang() {
    String result = "";
    DateTime date = DateTime.now();
    var soNgayCuaThang = tinhSoNgayCuaThang(date.month, date.year);
    if (date.day + 10 > soNgayCuaThang) {
      var soNgayConLaiTrongThang = soNgayCuaThang - date.day;
      result = (10 - soNgayConLaiTrongThang).toString() +
          ' Tháng ' +
          (date.month + 1).toString() +
          ' - ' +
          (15 - soNgayConLaiTrongThang).toString() +
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
            Text('Thông tin giao hàng', style: TextStyle(fontSize: 20))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: const Icon(Icons.phone_android),
          title: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Số điện thoại",
              labelStyle: TextStyle(
                fontSize: 20,
              ),
            ),
            controller: phoneController,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: const Icon(Icons.fmd_good_rounded),
          title: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Địa chỉ giao",
              labelStyle: TextStyle(
                fontSize: 20,
              ),
            ),
            controller: addressController,
          ),
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
    tongTien = tinhTongTien();
    var ngNhanHang = tinhNgayNhanHang();
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
                    Text('Nhận hàng vào $ngNhanHang'),
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
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Tạm tính'),
                Text('$tongTien VND'),
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
                Text('$tongTien VND'),
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
          '$tongTien VND',
          style: const TextStyle(color: Colors.red),
        ),
        trailing: ElevatedButton(
          onPressed: () {
            NetworkRequest.taoHoaDon(AccountStatic.id, tinhNgayNhanHang(),
                    addressController.text, phoneController.text)
                .then((data) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text(data),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeSceen()));
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  });
            });
          },
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
