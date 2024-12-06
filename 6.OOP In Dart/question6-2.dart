class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void displayDetails() {
    print('House ID: $id, Name: $name, Price: \$$price');
  }
}
void main() {
  List<House> houses = [
    House(1, "Villa", 250000),
    House(2, "Townhouse", 150000),
    House(3, "Cottage", 100000),
  ];
  for (var house in houses) {
    house.displayDetails();
  }
}
