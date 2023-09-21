void main(List<String> args) {
  var p = Person("lisi", age: 30);
  print(p.age);
}

class Person {
  final String name;
  final int age;

  // Person(this.name, {int? age}) : this.age = age ?? 10;

  Person(this.name, {this.age = 10}); //但是不能使用表达式，只能直接赋值
}
