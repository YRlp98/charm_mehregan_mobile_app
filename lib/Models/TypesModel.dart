class TypesModel {
  int id;
  String lable;
  DateTime createdAt;
  DateTime updateAt;

  TypesModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['type']['id'];
    lable = parsedJson['type']['lable'];
    createdAt = parsedJson['type']['createdAt'];
    updateAt = parsedJson['type']['updateAt'];
  }
}
