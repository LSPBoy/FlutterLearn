void main(List<String> args) {
  sayHello1("lsp");
  sayHello2("lsp", 18, 1.88);
  sayHello2("lsp");
  sayHello3("lsp", age: 18, height: 2.00);
}

//dart中没有函数的重载

//必选参数：必须传
void sayHello1(String name) {
  print(name);
}

//可选参数：位置可选参数 + 命名可选参数
//位置可选参数：[int? age, double? height]
void sayHello2(String name, [int? age = 20, double? height = 2.00]) {
  print("$name, $age, $height");
}

//可选参数：位置可选参数 + 命名可选参数
//命名可选参数：{int? age, double? height]}
void sayHello3(String name, {int? age, double? height}) {
  print("$name, $age, $height");
}
