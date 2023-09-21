import 'dart:io';

void main(List<String> args) {
  print("start");

  //发送一个网络请求
  var future = getNetworkData();
  print(future);

  //2.拿到结果
  future.then((String value) {
    print("拿到的结果：$value");
  }).catchError((error) {
    print("错误信息$error");
  }).whenComplete(() {
    print("代码执行完成");
  });

  print("end");
}

//模拟一个网络请求
Future<String> getNetworkData() {
  return Future(() {
    //1、将耗时操作包裹到Future中
    sleep(Duration(seconds: 3));
    // return "Hello World";

    throw Exception("抛出错误信息");
  });
}
