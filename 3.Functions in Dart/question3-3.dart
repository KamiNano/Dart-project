import 'dart:io';

Map<String, dynamic> createUser(String name, int age, {bool isActive = true}) {
  return {
    "name": name,
    "age": age,
    "isActive": isActive,
  };
}

void main() {
  stdout.write("กรอกชื่อ: ");
  String name = stdin.readLineSync()!;

  stdout.write("กรอกอายุ: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("ต้องการให้ผู้ใช้เป็น active หรือ inactive? (default: active): ");
  String? status = stdin.readLineSync();

  bool isActive = (status?.toLowerCase() == 'inactive') ? false : true;

  var user = createUser(name, age, isActive: isActive);
  print("ข้อมูลผู้ใช้: $user");
}