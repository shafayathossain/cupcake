class Product {
  int _id;
  String _name;
  double _price;
  String _image;
  String _description;

  Product(
      {int id, String name, double price, String image, String description}) {
    this._id = id;
    this._name = name;
    this._price = price;
    this._image = image;
    this._description = description;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  double get price => _price;
  set price(double price) => _price = price;
  String get image => _image;
  set image(String image) => _image = image;
  String get description => _description;
  set description(String description) => _description = description;

  Product.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _price = json['price'];
    _image = json['image'];
    _description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['price'] = this._price;
    data['image'] = this._image;
    data['description'] = this._description;
    return data;
  }
}
