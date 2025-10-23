/* Write a Dart program to create a class Laptop with properties [id, name, ram], create 3 objects of it,
and print all details. */
class Laptop {
  String id;
  String name;
  String ram;

  // Default (positional) constructor
  Laptop(this.id, this.name, this.ram);

  // Named constructor with default values
  Laptop.custom({this.id = 'N/A', this.name = 'N/A', this.ram = 'N/A'});

  void displayDetails() {
    print("------------- Laptop Details -------------");
    print("ID   : $id");
    print("Name : $name");
    print("RAM  : $ram\n");
  }
}
void main() {
  Laptop l1 = Laptop("A43M", "HP", "8GB");
  Laptop l2 = Laptop("B57P", "Dell", "16GB");
  Laptop l3 = Laptop.custom(name: "Asus");
  l1.displayDetails();
  l2.displayDetails();
  l3.displayDetails();
}
