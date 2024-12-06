class Animal {
  int id;
  String name;
  String color;
  Animal(this.id, this.name, this.color);
}
class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);

  @override
  String toString() {
    return 'Cat ID: $id, Name: $name, Color: $color, Sound: $sound';
  }
}
void main() {
  Cat myCat = Cat(1, 'Whiskers', 'Black', 'Meow');
  print(myCat);
}
