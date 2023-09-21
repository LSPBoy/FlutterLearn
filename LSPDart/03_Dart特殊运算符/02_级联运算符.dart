void main(List<String> args) {
  //一般写法
  var p1 = Person();
  p1.name = "why";
  p1.run();
  p1.eat();

  //级联写法
  var p2 = Person()
    ..name = "why"
    ..eat()
    ..run();

  print(p2);
}

class Person {
  late String name;

  void run() {
    print("running");
  }

  void eat() {
    print("eating");
  }
}
