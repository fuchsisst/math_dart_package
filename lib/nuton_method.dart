import 'dart:io';
import 'dart:math';

void main (){
  // Погрешность
  late double e;

  print('Введите погрешность');
  e = double.parse(stdin.readLineSync()!);
  print('Введите начальное приблежение');
  num xn_1 = double.parse(stdin.readLineSync()!);

  print('i: 0');
  num xn = FunctionF(xn_1).func();
  print('xn: $xn');

  for (int i = 1; (xn - xn_1).abs() > e; i++){
    xn_1 = xn;
    print('i: $i');
    xn = FunctionF(xn_1).func();
    print('xn: $xn');

  }

}

class FunctionF {
  num x;
  FunctionF(this.x);

  num func(){
   // return (x- (pow(x,3)+pow(x,2) - 2*x -1)/(3*pow(x,2)+2*x-2));
    return (x - (pow(x, 2) - cos(x))/(2*x + sin(x)));
  }
}