import 'dart:convert';
import 'package:charm_mehregan/Models/TypesModel.dart';
import 'package:http/http.dart' as http;

class TypesService {
  static Future<Map> getTypes(int page) async {
    final types = await http.get('https://charm.liara.run/api/v1/products');

    // const URL = 'https://charm.liara.run';
    // const VERSION = 'https://charm.liara.run';

    // final types = await http.get('${URL}/api/${VERSION}/types?${page}');
    // show types to users

    // If user chose the type
    // فیلتر کردن با تایپ
    // page=&type=${type['id']}

    // Else    final products = await http.get('${URL}/api/${VERSTION}/products?page=${page}');

    if (types.statusCode == 200) {
      var typesBody = json.decode(types.body)['data']['type'];
      List<TypesModel> typesList = [];
      typesBody['data']['type'].forEach((item) {
        typesList.add(TypesModel.fromJson(item));
      });

      return {'typeList': typesList};
      // return {'current_page': typesBody['current_page'], 'typeList': typesList};
    }
  }
}
