class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;
  Camera(this._id, this._brand, this._color, this._price);
  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;
  set id(int id) => _id = id;
  set brand(String brand) => _brand = brand;
  set color(String color) => _color = color;
  set price(double price) => _price = price;
  @override
  String toString() {
    return 'Camera ID: $_id, Brand: $_brand, Color: $_color, Price: \$_${_price.toStringAsFixed(2)}';
  }
}

void main() {
  List<Camera> cameras = [
    Camera(1, 'Canon', 'Black', 1200),
    Camera(2, 'Nikon', 'Gray', 900),
    Camera(3, 'Sony', 'White', 1500),
  ];

  for (var camera in cameras) {
    print(camera);
  }
}
