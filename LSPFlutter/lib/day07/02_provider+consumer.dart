import 'package:flutter/material.dart';
import 'package:lsp_flutter/day07/viewmodel/counter_view_model.dart';
import 'package:provider/provider.dart';

/**
 * 1.创建自己需要共享的数据
 * 2.在应用程序的顶层ChangeNotifierProvider
 * 3.在其它位置使用共享的数据
 *  > Provider.of: 当Provider中的数据发生改变时, Provider.of所在的Widget整个build方法都会重新构建
 *  > Consumer(相对推荐): 当Provider中的数据发生改变时, 执行重新执行Consumer的builder
 *  > Selector: 1.selector方法(作用,对原有的数据进行转换) 2.shouldRebuild(作用,要不要重新构建)
 */

void main() {
  // 2.在应用程序的顶层ChangeNotifierProvider
  runApp(ChangeNotifierProvider(create: (context) {
    return LSPCounterViewModel();
  }, child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  const HYHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ShowData01(),
            ShowData02()
          ],
        ),
      ),
      floatingActionButton: Consumer<LSPCounterViewModel>(builder: (ctx, counterVM, child) {
        print("floatingActionButton build方法被执行");
        return FloatingActionButton(onPressed: () {
          counterVM.counter += 1;
        }, child: child,);
      }, child: Icon(Icons.add),),
    );
  }
}

class ShowData01 extends StatelessWidget {
  const ShowData01({super.key});

  @override
  Widget build(BuildContext context) {

    print("data01的build方法");

    // 3.在其它位置使用共享的数据
    //3.1通过Provider获取值
    int count = Provider.of<LSPCounterViewModel>(context).counter;
    return Container(
      color: Colors.blue,
      child: Text("当前计数一: $count", style: const TextStyle(fontSize: 30),),
    );
  }
}

class ShowData02 extends StatelessWidget {
  const ShowData02({super.key});

  @override
  Widget build(BuildContext context) {
    print("data02的build方法");
    return Container(
      color: Colors.blue,
      //3.1通过Consumer获取值
      child: Consumer<LSPCounterViewModel>(builder: (ctx, counterVM, child) {
        print("data02 Consumer build方法被执行");
        return Text("当前计数二: ${counterVM.counter}", style: const TextStyle(fontSize: 30),);
      }),
    );
  }
}