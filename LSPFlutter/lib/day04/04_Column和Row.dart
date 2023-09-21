import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(const MyApp());
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
        title: const Text("商品列表"),
      ),
      body: const HYHomeContent(),
    );
  }
}

class HYHomeContent extends StatefulWidget {

  const HYHomeContent({super.key});

  @override
  State<HYHomeContent> createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  @override
  Widget build(BuildContext context) {
    return const ColumDemo();
  }
}

/**
 * Row特点:
 *  - 水平方向尽可能占据比较大的空间
 *    * 水平方向也是希望包裹内容, 那么设置mainAxisSize = min
 *  - 垂直方向包裹内容
 * MainAxisAlignment:
 *  - start: 主轴的开始位置挨个摆放元素(默认值)
 *  - end: 主轴的结束位置挨个摆放元素
 *  - center: 主轴的中心点对齐
 *  - spaceBetween: 左右两边的间距为0, 其它元素之间平分间距
 *  - spaceAround: 左右两边的间距是其它元素之间的间距的一半
 *  - spaceEvenly: 所有的间距平分空间
 * CrossAxisAlignment:
 *  - start: 交叉轴的起始位置对齐
 *  - end: 交叉轴的结束位置对齐
 *  - center: 中心点对齐(默认值)
 *  - baseline: 基线对齐(必须有文本的时候才起效果)
 *  - stretch: 先Row占据交叉轴尽可能大的空间, 将所有的子Widget交叉轴的高度, 拉伸到最大
 */

//Flex(direction: Axis.horizontal) 相当于Row
class RowDemo extends StatelessWidget {
  const RowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        textBaseline: TextBaseline.ideographic,
        textDirection: TextDirection.ltr,
        children: [
          Container(width: 100, height: 60, color: Colors.red, child: const Text("Hello", style: TextStyle(fontSize: 20),),),
          Container(width: 120, height: 100, color: Colors.yellow, child: const Text("World", style: TextStyle(fontSize: 30),),),
          Container(width: 60, height: 150, color: Colors.green,child: const Text("abcd", style: TextStyle(fontSize: 12),),),
          Container(width: 80, height: 150, color: Colors.orange, child: const Text("1234567890", style: TextStyle(fontSize: 40),),)
        ]
    );
  }
}

//Flex(direction: Axis.vertical) 相当于Column
class ColumDemo extends StatelessWidget {
  const ColumDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        textBaseline: TextBaseline.alphabetic,
        verticalDirection: VerticalDirection.up,
        children: [
          Container(width: 100, height: 60, color: Colors.red, child: const Text("Hello", style: TextStyle(fontSize: 20),),),
          Container(width: 120, height: 100, color: Colors.yellow, child: const Text("World", style: TextStyle(fontSize: 30),),),
          Container(width: 60, height: 150, color: Colors.green,child: const Text("abcd", style: TextStyle(fontSize: 12),),),
          Container(width: 80, height: 150, color: Colors.orange, child: const Text("1234567890", style: TextStyle(fontSize: 40),),)
        ]
    );
  }
}
