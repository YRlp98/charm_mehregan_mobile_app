class ProductsModel {
  List<Data> _data;
  Links _links;
  Meta _meta;

  ProductsModel({List<Data> data, Links links, Meta meta}) {
    this._data = data;
    this._links = links;
    this._meta = meta;
  }

  List<Data> get data => _data;
  set data(List<Data> data) => _data = data;
  Links get links => _links;
  set links(Links links) => _links = links;
  Meta get meta => _meta;
  set meta(Meta meta) => _meta = meta;

  ProductsModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      _data = new List<Data>();
      json['data'].forEach((v) {
        _data.add(new Data.fromJson(v));
      });
    }
    _links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    _meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._data != null) {
      data['data'] = this._data.map((v) => v.toJson()).toList();
    }
    if (this._links != null) {
      data['links'] = this._links.toJson();
    }
    if (this._meta != null) {
      data['meta'] = this._meta.toJson();
    }
    return data;
  }
}

class Data {
  int _id;
  String _code;
  String _title;
  String _image;
  String _description;
  int _usableId;
  int _userId;
  int _typeId;
  int _colorId;
  int _materialId;
  String _createdAt;
  String _updatedAt;
  Type _type;
  Color _color;
  Usable _usable;
  Material _material;

  Data(
      {int id,
      String code,
      String title,
      String image,
      String description,
      int usableId,
      int userId,
      int typeId,
      int colorId,
      int materialId,
      String createdAt,
      String updatedAt,
      Type type,
      Color color,
      Usable usable,
      Material material}) {
    this._id = id;
    this._code = code;
    this._title = title;
    this._image = image;
    this._description = description;
    this._usableId = usableId;
    this._userId = userId;
    this._typeId = typeId;
    this._colorId = colorId;
    this._materialId = materialId;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
    this._type = type;
    this._color = color;
    this._usable = usable;
    this._material = material;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get code => _code;
  set code(String code) => _code = code;
  String get title => _title;
  set title(String title) => _title = title;
  String get image => _image;
  set image(String image) => _image = image;
  String get description => _description;
  set description(String description) => _description = description;
  int get usableId => _usableId;
  set usableId(int usableId) => _usableId = usableId;
  int get userId => _userId;
  set userId(int userId) => _userId = userId;
  int get typeId => _typeId;
  set typeId(int typeId) => _typeId = typeId;
  int get colorId => _colorId;
  set colorId(int colorId) => _colorId = colorId;
  int get materialId => _materialId;
  set materialId(int materialId) => _materialId = materialId;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;
  Type get type => _type;
  set type(Type type) => _type = type;
  Color get color => _color;
  set color(Color color) => _color = color;
  Usable get usable => _usable;
  set usable(Usable usable) => _usable = usable;
  Material get material => _material;
  set material(Material material) => _material = material;

  Data.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _code = json['code'];
    _title = json['title'];
    _image = json['image'];
    _description = json['description'];
    _usableId = json['usable_id'];
    _userId = json['user_id'];
    _typeId = json['type_id'];
    _colorId = json['color_id'];
    _materialId = json['material_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _type = json['type'] != null ? new Type.fromJson(json['type']) : null;
    _color = json['color'] != null ? new Color.fromJson(json['color']) : null;
    _usable =
        json['usable'] != null ? new Usable.fromJson(json['usable']) : null;
    _material = json['material'] != null
        ? new Material.fromJson(json['material'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['code'] = this._code;
    data['title'] = this._title;
    data['image'] = this._image;
    data['description'] = this._description;
    data['usable_id'] = this._usableId;
    data['user_id'] = this._userId;
    data['type_id'] = this._typeId;
    data['color_id'] = this._colorId;
    data['material_id'] = this._materialId;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    if (this._type != null) {
      data['type'] = this._type.toJson();
    }
    if (this._color != null) {
      data['color'] = this._color.toJson();
    }
    if (this._usable != null) {
      data['usable'] = this._usable.toJson();
    }
    if (this._material != null) {
      data['material'] = this._material.toJson();
    }
    return data;
  }
}

class Type {
  int _id;
  String _label;
  String _createdAt;
  String _updatedAt;

  Type({int id, String label, String createdAt, String updatedAt}) {
    this._id = id;
    this._label = label;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get label => _label;
  set label(String label) => _label = label;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;

  Type.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _label = json['label'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['label'] = this._label;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}

class Color {
  int _id;
  String _name;
  Null _hex;
  String _createdAt;
  String _updatedAt;

  Color({int id, String name, Null hex, String createdAt, String updatedAt}) {
    this._id = id;
    this._name = name;
    this._hex = hex;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  Null get hex => _hex;
  set hex(Null hex) => _hex = hex;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;

  Color.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _hex = json['hex'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['hex'] = this._hex;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}

class Usable {
  int _id;
  String _title;
  String _createdAt;
  String _updatedAt;

  Usable({int id, String title, String createdAt, String updatedAt}) {
    this._id = id;
    this._title = title;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get title => _title;
  set title(String title) => _title = title;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;

  Usable.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _title = json['title'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['title'] = this._title;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}

class Material {
  int _id;
  String _name;
  String _createdAt;
  String _updatedAt;

  Material({int id, String name, String createdAt, String updatedAt}) {
    this._id = id;
    this._name = name;
    this._createdAt = createdAt;
    this._updatedAt = updatedAt;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  String get updatedAt => _updatedAt;
  set updatedAt(String updatedAt) => _updatedAt = updatedAt;

  Material.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['created_at'] = this._createdAt;
    data['updated_at'] = this._updatedAt;
    return data;
  }
}

class Links {
  String _first;
  String _last;

  Links({String first, String last, Null prev, Null next}) {
    this._first = first;
    this._last = last;
  }

  String get first => _first;
  set first(String first) => _first = first;
  String get last => _last;
  set last(String last) => _last = last;

  Links.fromJson(Map<String, dynamic> json) {
    _first = json['first'];
    _last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this._first;
    data['last'] = this._last;
    return data;
  }
}

class Meta {
  int _currentPage;
  int _from;
  int _lastPage;
  String _path;
  int _perPage;
  int _to;
  int _total;

  Meta(
      {int currentPage,
      int from,
      int lastPage,
      String path,
      int perPage,
      int to,
      int total}) {
    this._currentPage = currentPage;
    this._from = from;
    this._lastPage = lastPage;
    this._path = path;
    this._perPage = perPage;
    this._to = to;
    this._total = total;
  }

  int get currentPage => _currentPage;
  set currentPage(int currentPage) => _currentPage = currentPage;
  int get from => _from;
  set from(int from) => _from = from;
  int get lastPage => _lastPage;
  set lastPage(int lastPage) => _lastPage = lastPage;
  String get path => _path;
  set path(String path) => _path = path;
  int get perPage => _perPage;
  set perPage(int perPage) => _perPage = perPage;
  int get to => _to;
  set to(int to) => _to = to;
  int get total => _total;
  set total(int total) => _total = total;

  Meta.fromJson(Map<String, dynamic> json) {
    _currentPage = json['current_page'];
    _from = json['from'];
    _lastPage = json['last_page'];
    _path = json['path'];
    _perPage = json['per_page'];
    _to = json['to'];
    _total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this._currentPage;
    data['from'] = this._from;
    data['last_page'] = this._lastPage;
    data['path'] = this._path;
    data['per_page'] = this._perPage;
    data['to'] = this._to;
    data['total'] = this._total;
    return data;
  }
}
