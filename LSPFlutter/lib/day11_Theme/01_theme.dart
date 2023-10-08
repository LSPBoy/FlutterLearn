import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * 1.一旦设置了主题, 那么应用程序中的某些Widget, 就会直接使用主题的样式
     * 2.可以通过Theme.of(context).textTheme.display2
     */

    // MaterialColor extends Color
    // 父类的引用指向一个子类的对象
//    Color color = Colors.orangeAccent;

    // 子类的引用指向父类的对象;
    // MaterialColor color = Color(0xff000000);

    return MaterialApp(
      title: 'Flutter Demo',
      // 全局主题
      theme: ThemeData(
        // 1.亮度
          brightness: Brightness.light,
          // 2.primarySwatch传入不是Color, 而是MaterialColor(包含了primaryColor和accentColor)
          primarySwatch: Colors.red,
          // 3.primaryColor: 单独设置导航和TabBar的颜色
          primaryColor: Colors.orange,
          // 4.accentColor: 单独设置FloatingActionButton\Switch
          colorScheme: ColorScheme.fromSwatch(accentColor: Colors.green,),
          // 5.Button的主题
          buttonTheme: const ButtonThemeData(
              height: 25,
              minWidth: 10,
              buttonColor: Colors.yellow,

          ),
          // 6.Card的主题
          cardTheme: const CardTheme(
              color: Colors.greenAccent,
              elevation: 10
          ),
          // 7.Text的主题
          textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 20, color: Colors.red),
            bodySmall: TextStyle(fontSize: 16),
          )
      ),
      home: const HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  const HYHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("首页")
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text("Hello World"),
            const Text("Hello World", style: TextStyle(fontSize: 14),),
            const Text("Hello World", style: TextStyle(fontSize: 20),),
            Text("Hello World", style: Theme.of(context).textTheme.bodySmall,),
            Text("Hello World", style: Theme.of(context).textTheme.bodyMedium,),
            Switch(value: true, onChanged: (value) {},),
            CupertinoSwitch(value: true, onChanged: (value) {}, activeColor: Colors.red,),
            TextButton(onPressed: () {}, child: const Text("R"),),
            const Card(child: Text("你好啊,李银河", style: TextStyle(fontSize: 50),),)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              label: "首页",
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: "分类",
              icon: Icon(Icons.category)
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (ctx) {
                return const LSPDetailPage();
              }
          ));
        },
      ),
    );
  }
}

class LSPDetailPage extends StatelessWidget {
  const LSPDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          primaryColor: Colors.purple
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("详情页"),
          backgroundColor: Colors.purple,
        ),
        body: const Center(
          child: Text("detail pgae"),
        ),
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
              colorScheme: Theme.of(context).colorScheme.copyWith(
                  secondary: Colors.green
              )
          ),
          child: FloatingActionButton(
            child: const Icon(Icons.pets),
            onPressed: () {
            },
          ),
        ),
      ),
    );
  }
}



