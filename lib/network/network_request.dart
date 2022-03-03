import 'dart:convert';
import 'package:do_an_ltdd/models/account_api.dart';
import 'package:do_an_ltdd/models/product_api.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:do_an_ltdd/models/cart_api.dart';
import 'package:do_an_ltdd/models/category_api.dart';

class NetworkRequest {
  static const String url = 'http://10.0.2.2:8000/api/';

  static List<Products> parseProduct(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Products> products =
        list.map((model) => Products.fromJson(model)).toList();
    return products;
  }

  static Future<List<Products>> fetchProduct() async {
    final response = await http.get(Uri.parse(url + 'products'));
    if (response.statusCode == 200) {
      return compute(parseProduct, response.body);
    } else if (response.statusCode == 404) {
      throw Exception('Not Found');
    } else {
      throw Exception('Can\'t get post');
    }
  }

  static List<Cart> parseCart(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Cart> carts = list.map((model) => Cart.fromJson(model)).toList();
    return carts;
  }

  static Future<List<Cart>> fetchCart(int id) async {
    final response = await http.get(
      Uri.parse(url + 'carts/$id'),
    );
    if (response.statusCode == 200) {
      return compute(parseCart, response.body);
    } else if (response.statusCode == 404) {
      throw Exception('Not Found');
    } else {
      throw Exception('Can\'t get post');
    }
  }

  static Future<http.Response> changeStatus(int id) {
    return http.post(
      Uri.parse(url + 'carts/updateStatus/$id'),
    );
  }

  static Future<http.Response> upQuantity(int id) {
    return http.post(
      Uri.parse(url + 'carts/upQuantity/$id'),
    );
  }

  static Future<http.Response> downQuantity(int id) {
    return http.post(
      Uri.parse(url + 'carts/downQuantity/$id'),
    );
  }

  static Future<http.Response> deleteCart() {
    return http.delete(
      Uri.parse(url + 'carts/delete'),
    );
  }

  static List<Categorys> parseCategory(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Categorys> category =
        list.map((model) => Categorys.fromJson(model)).toList();
    return category;
  }

  static Future<List<Categorys>> fetchCategory(String category) async {
    final response = await http.get(
      Uri.parse(url + 'products/category/$category'),
    );
    if (response.statusCode == 200) {
      return compute(parseCategory, response.body);
    } else if (response.statusCode == 404) {
      throw Exception('Not Found');
    } else {
      throw Exception('Can\'t get post');
    }
  }

  static List<Account> parseLogin(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Account> category =
        list.map((model) => Account.fromJson(model)).toList();
    return category;
  }

  static Future<List<Account>> fetchLogin(
      String username, String password) async {
    final response = await http.get(
      Uri.parse(url + 'login/$username/$password'),
    );
    if (response.statusCode == 200) {
      return compute(parseLogin, response.body);
    } else if (response.statusCode == 404) {
      throw Exception('Not Found');
    } else {
      throw Exception('Can\'t get post');
    }
  }

  static Future<String> suaThongTinTaiKhoan(
      int id, String ten, String sdt, String email, String diachi) async {
    final response = await http.get(
      Uri.parse(
          url + 'accounts/suaThongTinCaNhan/$id/$ten/$sdt/$email/$diachi'),
    );
    if (response.statusCode == 200) {
      return response.body;
    } else if (response.statusCode == 404) {
      throw Exception('Not Found');
    } else {
      throw Exception('Can\'t get post');
    }
  }

  static Future<String> suaMatKhau(
      int id, String matkhaucu, String matkhaumoi) async {
    final response = await http.get(
      Uri.parse(url + 'accounts/suaMatKhau/$id/$matkhaucu/$matkhaumoi'),
    );
    if (response.statusCode == 200) {
      return response.body;
    } else if (response.statusCode == 404) {
      throw Exception('Not Found');
    } else {
      throw Exception('Can\'t get post');
    }
  }

  static Future<String> taoHoaDon(int id, String IssuedDate,
      String ShippingAddress, String ShippingPhone) async {
    final response = await http.get(
      Uri.parse(url +
          'invoices/taoHoaDon/$id/$IssuedDate/$ShippingAddress/$ShippingPhone'),
    );
    if (response.statusCode == 200) {
      return response.body;
    } else if (response.statusCode == 404) {
      throw Exception('Not Found');
    } else {
      throw Exception('Can\'t get post');
    }
  }

  static List<Categorys> parseSearch(String responseBody) {
    var list = json.decode(responseBody) as List<dynamic>;
    List<Categorys> category =
        list.map((model) => Categorys.fromJson(model)).toList();
    return category;
  }

  static Future<List<Categorys>> fetchSearch(String dataSearch) async {
    final response = await http.get(
      Uri.parse(url + 'products/search/$dataSearch'),
    );
    if (response.statusCode == 200) {
      return compute(parseSearch, response.body);
    } else if (response.statusCode == 404) {
      throw Exception('Not Found');
    } else {
      throw Exception('Can\'t get post');
    }
  }
}
