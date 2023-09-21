void main(List<String> args) {
  //1.定义字符串
  var str1 = 'abc';
  var str2 = "123";
  var str3 = """
abc
123
ABC
""";

  print(str1);
  print(str2);
  print(str3);

//2.字符串和表达式进行拼接
  var name = "why";
  var age = 19;
  var height = 1.88;

  var message1 = "my name is ${name}, age is ${age}, height is ${height}";
  print(message1);
  var message2 = "name is ${name}, type is ${name.runtimeType}";
  print(message2);
}
