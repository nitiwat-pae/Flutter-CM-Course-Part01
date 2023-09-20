void main() {
  // Basic function
  normalFun();
  argsFun("Mr.", 555);
  var result1 = sum1(1, 2);
  var result2 = sum2(3, 4);
  var result3 = sum3(5, 6);
  var result4 = sum4(7, 8);
  print("$result1, $result2, $result3, $result4");

  // Function with optional named, positional, default value paramters
  mul1(x1: 2, x2: 6); // Result is 12
  mul1(); // Result is 0 because the function mul1 has been set default value of x1 and x2 to be 0
  mul2(x1: 2, x2: 6); // Result is 12
  //mul2(); // This will be error because the function mul2 has not been set default value
}

void normalFun() {
  print("This is function normalFun");
}

void argsFun(String in_Title, int x) {
  print("$in_Title, $x");
}

int sum1(int x1, int x2) {
  return x1 + x2;
}

sum2(x1, x2) {
  return x1 + x2;
}

sum3(int x1, int x2) => x1 + x2;
sum4(x1, x2) => x1 + x2;

void mul1({int x1 = 0, int x2 = 0}) {
  print("mul1 x1 is $x1, x2 is $x2");
  var result = x1 * x2;
  print("Result of mul1 is $result");
}

void mul2({var x1, var x2}) {
  print("mul2 x1 is $x1, x2 is $x2");
  var result = x1 * x2;
  print("Result of mul2 is $result");
}
