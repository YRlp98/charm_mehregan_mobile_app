class TypesModel {
  List<Data> _data;

  TypesModel({List<Data> data}) {
    this._data = data;
  }

  List<Data> get data => _data;
  set data(List<Data> data) => _data = data;

  TypesModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      _data = new List<Data>();
      json['data'].forEach((v) {
        _data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._data != null) {
      data['data'] = this._data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String _label;
  int _id;

  Data({String label, int id}) {
    this._label = label;
    this._id = id;
  }

  String get label => _label;
  set label(String label) => _label = label;
  int get id => _id;
  set id(int id) => _id = id;

  Data.fromJson(Map<String, dynamic> json) {
    _label = json['label'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this._label;
    data['id'] = this._id;
    return data;
  }
}
