import 'dart:async';

Future<List<String>> sortListAsync(List<String> inputList) async {
  // จำลองการทำงานแบบ Asynchronous
  await Future.delayed(Duration(seconds: 1));
  inputList.sort(); // เรียงลำดับ
  return inputList;
}

void main() async {
  List<String> inputList = ['Banana', 'Apple', 'Cherry', 'Mango', 'Pineapple'];
  print('Original List: $inputList');

  // เรียกใช้งานฟังก์ชันแบบ Asynchronous
  List<String> sortedList = await sortListAsync(inputList);

  print('Sorted List: $sortedList');
}
