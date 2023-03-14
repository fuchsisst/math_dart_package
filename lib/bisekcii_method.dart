import 'dart:io';
import 'dart:math';

void main() {
  // Погрешность
  late double e;

  // Границы локализации
  late double a;
  late double b;

  print('Введите погрешность');
  e = double.parse(stdin.readLineSync()!);
  print('Введите левую границу отрезка локализации корня');
  a = double.parse(stdin.readLineSync()!);
  print('Введите правую границу отрезка локализации корня');
  b = double.parse(stdin.readLineSync()!);

  for (int i = 0; (b - a).abs() > e; i++) {
    print('Итерация № $i');

    // Половина отрезка
    double x = (a + b) / 2;

    // Границы локализации и середина отрезка
    print('a: $a');
    print('x: $x');
    print('b: $b');

    // Значение функции в точках
    double fA = FunctionF(a).func();
    double fB = FunctionF(b).func();
    double fX = FunctionF(x).func();

    print('fA: $fA');
    print('fB: $fB');
    print('fX: $fX');

    if (fA * fX < 0) {
      a = a;
      b = x;
    } else if (fX * fB < 0) {
      a = x;
      b = b;
    }
  }
}

class FunctionF {
  double x;

  FunctionF(this.x);

  double func() {
    // return pow(x, 3) + pow(x, 2) - 2 * x - 1;
    return cos(x)-pow(x,2);
  }
}
