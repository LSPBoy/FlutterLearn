void main(List<String> args) {

  // external factory Map()
  //external是把方法的声明和实现分离
  //方法的实现通过@patch补丁的方式实现
  //这样方便根据不同的平台进行实现
  // final map = Map();
}

//注意点：
//1、抽象类不能实例化，但是可以通过工厂构造函数
//2、抽象类里面可以没有方法的实现
abstract class Shape {
  void getArea();

  String getInfo() {
    return "形状";
  }

  // factory Shape() {
  //   return null; //不能实例化自己，可以实例化一个自己的子类
  // }
}

//1、继承抽象类后，必须实现抽象类的抽象方法
class Rectangle extends Shape {
  @override
  int getArea() {
    return 100;
  }
}
