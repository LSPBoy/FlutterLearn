import 'dart:io';

void main(List<String> args) {
  print("main start");
  Future(() {
    sleep(Duration(seconds: 3));
    return "第一次的结果";
  }).then((value) {
    print(value);
    //发送第二次请求
    sleep(Duration(seconds: 2));
    return "第二次的结果";
  }).then((value) {
    print(value);
    sleep(Duration(seconds: 1));
    return "第三次结果";
  }).then((value) {
    print(value);
  }).catchError((error) {

  });

  print("main end");
}
