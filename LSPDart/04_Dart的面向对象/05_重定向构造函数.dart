void main(List<String> args) {
  var p = Person("lisi");
  print(p.age);
}

class Person {
  String name;
  int age;

  Person(String name) : this._internal(name, 18);
  Person._internal(this.name, this.age);
}
