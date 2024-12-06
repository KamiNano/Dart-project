import 'dart:io';
void main() {
  stdout.write("กรอกตัวเลข: ");
  int? num = int.tryParse(stdin.readLineSync()!);
  if (num == null) {
    print("กรุณากรอกตัวเลขที่ถูกต้อง");
  } else {
    if (num % 2 == 0) {
      print("เป็นเลขคู่");
    } else {
      print("เป็นเลขคี่");
    }
  }
}