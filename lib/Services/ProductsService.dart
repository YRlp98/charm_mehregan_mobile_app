import 'dart:convert';
import 'package:charm_mehregan/Models/ProductsModel.dart';
import 'package:http/http.dart' as http;

class ProductsService {
  static Future<Map> getProducts(int page) async {
    final response =
        await http.get('http://roocket.org/api/products?page=${page}');

    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body)['data'];
      List<ProductsModel> products = [];
      responseBody['data'].forEach((item) {
        products.add(ProductsModel.fromJson(item));
      });

      return {
        'current_page': responseBody['current_page'],
        'products': products
      };
    }
  }
}
