void main(List<String> args) {}

// Dart中没有哪一个关键字是来定义接口的
// 没有这些关键字interface/protocol
// 默认情况下所有的类都是隐式接口
class Runner {
  void running() {
    print("running");
  }
}

class Flyer {
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

//当将一个类当做接口使用时，那么实现这个接口的类，必须实现这个接口中所有方法
//当父类中的方法和接口的方法相同时可以不用写
class SuperMan extends Animal implements Runner, Flyer {
  @override
  void flying() {
   
  }

  @override
  void eating() {
    super.eating();
  }
}
