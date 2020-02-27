import 'dart:convert';
import 'package:charm_mehregan/Models/TypesModel.dart';
import 'package:http/http.dart' as http;

class TypesService {
  static Future<TypesModel> getTypes() async {
    print('**** getTypes ****');
    String typesUrl = "https://charm.liara.run/api/v1/types";
    TypesModel typeList;
    var response = await http.get(typesUrl);
    if (response.statusCode == 200) {
      typeList = TypesModel.fromJson(jsonDecode(response.body));
    } else {
      print('Faild to load data from API');
    }

    return typeList;
  }
}
