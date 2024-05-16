import 'intro_to_dart.dart';

// int addTwoNumbersWithReturnInt(
//     {required int firstNumber, required int secondNumber}) {
//   // result = firstNumber + secondNumber;
//   // return result;
// }

addTwoNumberThenMultiplyThirdNumber(int firstNmuber, int secondNumber,
    [int thirdNumber = 1]) {
  return (firstNmuber + secondNumber) * thirdNumber;
}

addTwoNumberThenMultiplyThirdNumberWithNamedParams(
    {required int firstNumber,
    required int secondNumber,
    int thirdNumber = 1}) {
  return (firstNumber + secondNumber) * thirdNumber;
}

// void addTwoNumbersWithoutReturnInt(int firstNumber, int secondNumber) {
//   result = firstNumber + secondNumber;
//   print(result);
// }
