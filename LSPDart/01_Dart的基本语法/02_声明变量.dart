void main(List<String> args) {
  //1.明确的声明
  String name = "lsp";
  print("name: $name");

  //2.类型推导(var/final/const)
  //2.1 var声明变量
  var age = 20;
  print("age: $age");

  //2.2 final声明常量
  final height = 1.88;
  print("height: $height");

  //2.3const声明常量
  const address = "北京市";
  print("address: $address");

  //2.4final和const的区别
  //const必须赋值 常量值(编译期间需要有一个确定的值)
  //final可以通过计算/函数获取一个值（运行期间来确定一个值）

  // const date1 = DateTime.now(); 写法错误
  final date2 = DateTime.now();
  print(date2);

  final p1 = Person("lsp");
  final p2 = Person("lsp");
  print(identical(p1, p2)); //false

  const p3 = Person("name");
  const p4 = Person("name");
  const p5 = Person("liji");
  print(identical(p3, p4)); //true
  print(identical(p3, p5)); //false

  //dynamic/Object
}

class Person {
  final String name;

  const Person(this.name);
}
