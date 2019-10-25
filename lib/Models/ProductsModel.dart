class ProductsModel {
  int id;
  int userId;
  String title;
  String body;
  String image;
  String price;
  DateTime createdAt;
  DateTime updateAt;

  ProductsModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    userId = parsedJson['userId'];
    title = parsedJson['title'];
    body = parsedJson['body'];
    image = parsedJson['image'];
    price = parsedJson['price'];
    createdAt = parsedJson['createdAt'];
    updateAt = parsedJson['updateAt'];
  }
}