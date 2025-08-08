import 'dart:io';

void main() {
  print('Simple addtion tekonologia calculatur');
  stdout.write('Please enter the first number: ');
  double? num1 = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write('Please enter the second number: ');
  double? num2 = double.tryParse(stdin.readLineSync() ?? '');
  if (num1 == null || num2 == null) {
    print('Invalid input. Please enter valid numbers.');
    return;
  }
  stdout.write('Please enter an operator (+, -, *, /): ');
  String? operator = stdin.readLineSync();
  double? result;
  
  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print("Error: Cannot divide by zero.");
        return;
      }
      result = num1 / num2;
      break;
    default:
      print('Invalid operator. Please use +, -, *, or /.');
      return;
  }
  if (result != ' ') {
    print('The result of the operation is: ${result.toStringAsFixed(2)}');
  }
}
