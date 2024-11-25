import 'dart:io';

int maxNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception("The list is empty");
  }
  return numbers.reduce((a, b) => a > b ? a : b);
}
void main() {
  List<int> nums = [];
  while (true) {
    stdout.write("กรอกตัวเลข (พิมพ์ 'done' เพื่อหยุด): ");
    String? input = stdin.readLineSync();
    if (input == 'done') {
      break;
    }

    try {
      int num = int.parse(input!);
      nums.add(num);
    } catch (e) {
      print("กรุณากรอกตัวเลขที่ถูกต้อง!");
    }
  }

  try {
    int max = maxNumber(nums);
    print("ตัวเลขที่มากที่สุดคือ: $max");
  } catch (e) {
    print(e);
  }
}
