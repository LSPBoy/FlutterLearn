import 'dart:io';

void main(List<String> args) {
  print("main start");

  getData();

  print("main end");
}

void getData() {

  //链式调用版本
  // getNetworkData("arg1").then((res) {
  //   print(res);
  //   return getNetworkData(res);
  // }).then((value) {
  //   print(value);
  //   return getNetworkData(value);
  // }).then((value) {
  //   print(value);
  // });


  //await版本
  // var res1 = getNetworkData('arg1');
  // var res2 = getNetworkData(res1);
  // var res3 = getNetworkData(res2);


}

Future<String> getNetworkData(String arg) async {
  return await Future(() {
    sleep(Duration(seconds: 3));
    return "Hello World" + arg;
  });
}
