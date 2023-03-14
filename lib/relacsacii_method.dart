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
   // return (x-0.13*(pow(x,3)+pow(x,2)-2*x-1));
    return (x-0.5*(pow(x,2)-cos(x)));
  }
}