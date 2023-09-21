void main(List<String> args) {
  final sm = SuperMan();
  sm.running();
  sm.flying();
  sm.eating();
}

//混入的语法
//1、定义可混入的类时不能用class，要用mixin
mixin Runner {
  void running() {
    print("running");
  }
}

mixin Flyer {
  void flying() {
    print("flying");
  }
}

class Animal {
  void eating() {
    print("动物吃东西");
  }

  void running() {
    print("动物running");
  }
}

class SuperMan extends Animal with Runner, Flyer {
  @override
  void eating() {
    super.eating();
    print("superman eating");
  }
}
