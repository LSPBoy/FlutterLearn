//默认的构造函数不用有返回值
//但是工厂构造函数需要手动返回值

void main(List<String> args) {
  final p1 = Person.withName("zs");
  final p2 = Person.withName("zs");
  final p3 = Person.withName("ls");
  print(identical(p1, p2));
  print(identical(p1, p3));
}

class Person {
  String name;
  String color;

  static final Map<String, Person> _nameCache = {};
  static final Map<String, Person> _colorCache = {};

  factory Person.withName(String name) {
    return _nameCache.putIfAbsent(
        name, () => _nameCache[name] = Person(name, "default"));
  }

  factory Person.withColor(String color) {
    return _colorCache.putIfAbsent(
        color, () => _colorCache[color] = Person("default", color));
  }

  Person(this.name, this.color);
}
