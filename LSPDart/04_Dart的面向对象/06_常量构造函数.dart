void main(List<String> args) {
  const p1 = Person("lisi");
  const p2 = Person("lisi");
  print(identical(p1, p2));
}

class Person {
  final String name;
  const Person(this.name);
}
