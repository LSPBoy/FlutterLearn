
void main(List<String> args) {
  print("main start");

  var result = getNetworkData().then((value) {
    print(value);
  });
  print(result);

  print("main end");
}

/**
 * 解决两个问题
 * 1.await必须在async函数中使用
 * 2.async函数返回的结果必须是一个Future
 */

/**
 * 使用步骤
 * 1.在函数声明前添加async关键字，将函数标记为异步函数。
 * 2.在需要等待异步操作完成的地方使用await关键字，它将暂停函数的执行，直到异步操作完成。
 * 需要注意的是，只能在异步函数中使用await关键字。如果在非异步函数中使用await，将会导致编译错误。
 */
Future<String> getNetworkData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Hello World";
}
