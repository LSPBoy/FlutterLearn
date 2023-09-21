void main(List<String> args) {
  var p = Person.withNameAgeHeight("lisi", 18, 1.88);
  print(p.toString());
}

class Person {
  String name;
  int age;
  late double height; //新加一个属性

  Person(this.name, this.age);

  //命名构造函数
  Person.withNameAgeHeight(this.name, this.age, this.height);

  @override
  String toString() {
    return "$name $age $height";
  }
}
