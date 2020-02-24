import 'dart:convert';
import 'package:charm_mehregan/Models/ProductsModel.dart';
import 'package:http/http.dart' as http;

class ProductsService {
  static Future<ProductsModel> getProducts() async {
    print('**** getProducts ****');
    String productsUrl =
        "https://charm.liara.run//api/v1/products"; // ?page=${page}
    ProductsModel productsList;
    var response = await http.get(productsUrl);
    if (response.statusCode == 200) {
      productsList = ProductsModel.fromJson(jsonDecode(response.body));
    } else {
      print('Faild to load data from API');
    }

    return productsList;
  }
}
