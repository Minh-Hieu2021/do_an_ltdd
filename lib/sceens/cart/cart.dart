import 'package:flutter/material.dart';
// import 'package:hqd_app/sceens/cart/components/botom_nabar.dart';
import 'package:do_an_ltdd/models/product_model.dart';
import 'package:do_an_ltdd/models/cart_model.dart';
import 'package:do_an_ltdd/sceens/xacnhandonhang/xacnhandonhang.dart';

import '../../constanst.dart';
// import 'components/item_counter.dart';
//import 'package:hqd_app/components/RecomendPlantCard.dart';

class CartSceen extends StatefulWidget {
  const CartSceen({Key? key}) : super(key: key);
  @override
  State<CartSceen> createState() => _CartSceenState();
}

class _CartSceenState extends State<CartSceen> {
  bool? isChecked;
  int tongtien = 0;
  int soLuongSPMua = 0;
  checkAll(bool ischeck) {
    if (ischeck) {
      for (int i = 0; i < carts.length; i++) {
        carts[i].status = ischeck;
        tongtien += products[carts[i].idsp].price * carts[i].sl;
      }
    } else {
      for (int i = 0; i < carts.length; i++) {
        carts[i].status = ischeck;
        tongtien = 0;
      }
    }
  }

  int soLuongSanPhamMua() {
    int result = 0;
    for (int i = 0; i < carts.length; i++) {
      if (carts[i].status) {
        result++;
      }
    }
    return result;
  }

  int tongTien() {
    int result = 0;
    for (int i = 0; i < carts.length; i++) {
      if (carts[i].status) {
        result += products[carts[i].idsp].price * carts[i].sl;
      }
    }
    return result;
  }

  bool check() {
    for (int i = 0; i < carts.length; i++) {
      if (carts[i].status == false) {
        return false;
      }
    }
    return true;
  }

  Widget header() {
    return Column(
      children: [
        Container(
          height: 8,
          color: Colors.grey[300],
        ),
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
        ListTile(
          leading: Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                  checkAll(isChecked!);
                });
              }),
          title: Text('Tất cả (${carts.length} sản phẩm)'),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
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
    soLuongSPMua = soLuongSanPhamMua();
    isChecked = check();
    tongtien = tongTien();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        title: const Text('Giỏ hàng'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Column(
        children: [
          header(),
          Expanded(
            flex: 1,
            child: Container(
              child: ListView.builder(
                itemCount: carts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Column(
                        children: [
                          Checkbox(
                              value: carts[index].status,
                              onChanged: (bool? value) {
                                setState(() {
                                  carts[index].status = value!;
                                });
                              }),
                        ],
                      ),
                      SizedBox(
                        width: 88,
                        child: AspectRatio(
                          aspectRatio: 0.88,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5F6F9),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child:
                                Image.asset(products[carts[index].idsp].image),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            products[carts[index].idsp].title,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 16),
                            maxLines: 3,
                          ),
                          const SizedBox(height: 10),
                          Text.rich(
                            TextSpan(
                              text: '${products[carts[index].idsp].price} VND',
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          _CartCounter(index),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
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
            if (carts[index].sl > 1) {
              setState(() {
                carts[index].sl--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            carts[index].sl.toString().padLeft(2, "0"),
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              carts[index].sl++;
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const XacnhandonhangSceen()),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            onPrimary: Colors.white,
          ),
          child: Text('Mua hàng ($soLuongSPMua)'),
        ),
      ),
    );
  }
}
