import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String a = await task2();
  task3(a);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  String result = '';
  await Future.delayed(Duration(milliseconds: 3000), () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String a) {
  String result = 'task 3 data';
  print('Task 3 complete with $a');
}
