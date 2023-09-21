import 'dart:isolate';

void main(List<String> args) async {
  //1.创建管道
  ReceivePort receivePort = ReceivePort();

  //2.创建Isolate
  Isolate isolate = await Isolate.spawn<SendPort>(foo, receivePort.sendPort);

  //3.监听管道
  receivePort.listen((message) {
    print(message);
    receivePort.close();
    isolate.kill();
  });
}

void foo(SendPort sendPort) {
  return sendPort.send("Hello World");
}
