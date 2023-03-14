import 'dart:io';
import 'dart:math';

void main (){
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

  double x0 = 1;
 // double xn = x0;
  num d = 1;
  num xn_1 = 4;
  num xn = FunctionF(xn_1, d).func();
 // xn_1=xn;
  // f = x
  //double f = 0.5*(pow(x, 3) + pow(x, 2) - 1);
  //double fProizvodnaya = 0.5*(3*pow(x,2) + 2*x);

  for (int i = 0; (xn - xn_1).abs() > e; i++){
   // xn_2 = xn_1;
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

  num func(){
    return (x- ((x-x1)*(pow(x,3)+pow(x,2)-2*x-1))/((pow(x,3)+pow(x,2)-2*x-1)-(pow(x1,3)+pow(x1,2)-2*x1-1)));
  }
}