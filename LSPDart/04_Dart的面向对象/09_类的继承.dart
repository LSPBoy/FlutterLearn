void main(List<String> args) {
  final p = Person("lisi", 18);
  p.run();
}

class Animal {
  int age;

  Animal(this.age);

  run() {
    print("动物跑");
  }
}

class Person extends Animal {
  String name;

  Person(this.name, int age) : super(age);

  @override
  run() {
    super.run();
    print("人跑");
  }
  
}
