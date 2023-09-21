void main(List<String> args) {
  var p = Person("lsp", 18);
  print(p);
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
