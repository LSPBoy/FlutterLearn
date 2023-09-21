void main(List<String> args) {
  Future(() {
    return "Hello World";
  }).then((value) {
    print(value);
  });

  Future.value("哈哈哈").then((value) {
    print(value);
  });

  Future.error("错误信息").catchError((error) {
    print(error);
  });

  Future.delayed(Duration(seconds: 2)).then((value) {
    return "Hello";
  }).then((value) {
    print(value);
  });

  Future.delayed(Duration(seconds: 3), () {
    return "Hello Flutter";
  }).then((value) {
    print(value);
    return "Hello Dart";
  }).then((value) {
    print(value);
  });
}
