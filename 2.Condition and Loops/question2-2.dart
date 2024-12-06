import 'dart:io';

void main() {
  stdout.write("กรอกข้อความ: ");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("กรุณากรอกข้อความที่ไม่ว่างเปล่า");
    return;
  }
  String text = input.toUpperCase();
  List<String> vowels = ['A', 'E', 'I', 'O', 'U'];
  for (int i = 0; i < text.length; i++) {
    String character = text[i];
    if (_isEnglishLetter(character)) {
      if (vowels.contains(character)) {
        print("$character เป็นสระ");
      } else {
        print("$character เป็นพยัชนะ");
      }
    } else {
      print("$character ไม่ใช่อักษรภาษาอังกฤษ");
    }
  }
}
bool _isEnglishLetter(String character) {
  return (character.codeUnitAt(0) >= 65 && character.codeUnitAt(0) <= 90);
}
