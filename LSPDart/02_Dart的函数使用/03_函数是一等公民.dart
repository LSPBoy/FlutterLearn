void main(List<String> args) {
  //1.函数作为参数传递，直接传进一个定义的函数进去
  test1(testObject);


  //2. 匿名函数作为参数，懒得再定义一个函数，(参数列表){函数体}
  test1(() {
    print("匿名函数被调用");
    return 10;
  });


  //3. 箭头函数：条件，函数只有一行代码
  test1(() => print("箭头函数被调用"));

  // test2((num1, num2) {
  //   return num1 + num2;
  // });
  test2((num1, num2) => num1 * num2);

  test3((num1, num2) => num1 * num2);

  var demo1 = demo();
  print(demo1(20, 30));
}

void test1(Function func) {
  var result = func();
  print(result);
}

void testObject() {
  print("object");
}

void test2(int foo(int num1, int num2)) {
  var result = foo(20, 30);
  print(result);
}

typedef Calculate = int Function(int num1, int num2);
void test3(Calculate cal) {
  var result = cal(10, 20);
  print(result);
}

Calculate demo() {
  return (num1, num2) {
    return num1 + num2;
  };
}

//总结：函数是一等公民，函数A可以作为另外一个函数B的参数，也可以作为函数B的返回值