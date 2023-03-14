import 'dart:io';
import 'dart:math';

void main() {
  // Погрешность
  late double e;

  print('Введите погрешность');
  e = double.parse(stdin.readLineSync()!);
  print('Введите фиксированную точку d');
  num d = double.parse(stdin.readLineSync()!);
  print('Введите начальное приблежение');
  num xn_1 = double.parse(stdin.readLineSync()!);

  print('i: 0');
  num xn = FunctionF(xn_1, d).func();
  print('xn: $xn');

  for (int i = 1; (xn - xn_1).abs() > e; i++) {
    xn_1 = xn;
    print('i: $i');
    xn = FunctionF(xn_1, d).func();
    print('xn: $xn');
  }
}

class FunctionF {
  num x;
  num x1;
  FunctionF(this.x, this.x1);

  num func() {
    // return (x -
    //     ((x - x1) * (pow(x, 3) + pow(x, 2) - 2 * x - 1)) /
    //         ((pow(x, 3) + pow(x, 2) - 2 * x - 1) -
    //             (pow(x1, 3) + pow(x1, 2) - 2 * x1 - 1)));
    return (x - (4-x)*(pow(x,2) - cos(x))/(16.6536-(pow(x, 2) - cos(x))));
  }
}
