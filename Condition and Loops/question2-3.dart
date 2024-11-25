import 'dart:io';

void main() {
  stdout.write("กรอกตัวเลข: ");
  int? number = int.tryParse(stdin.readLineSync()!);
  if (number == null) {
    print("กรุณากรอกตัวเลขที่ถูกต้อง!");
  } else {
    print("ตารางแม่สูตรคูณ $number:");
    for (int i = 1; i <= 12; i++) {
      print("$number x $i = ${number * i}");
    }
  }
}