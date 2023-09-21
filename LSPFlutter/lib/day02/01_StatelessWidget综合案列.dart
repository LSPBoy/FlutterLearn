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

class HYHomeContent extends StatelessWidget {
  const HYHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        HYHomeProductItem(title: "Apple1", desc: "Macbook1", imageURL: "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        SizedBox(height: 6,),
        HYHomeProductItem(title: "Apple2", desc: "Macbook2", imageURL: "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imm9u5zj30u00k0adf.jpg"),
        SizedBox(height: 6,),
        HYHomeProductItem(title: "Apple3", desc: "Macbook3", imageURL: "https://tva1.sinaimg.cn/large/006y8mN6gy1g72imqlouhj30u00k00v0.jpg")
      ],
    );
  }
}

class HYHomeProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imageURL;

  const HYHomeProductItem({super.key, required this.title, required this.desc, required this.imageURL});

  final style1 = const TextStyle(fontSize: 25, color: Colors.orange);
  final style2 = const TextStyle(fontSize: 20, color: Colors.green);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(
              width: 5.0,
              color: Colors.pink
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: style1,),
          const SizedBox(height: 8,),
          Text(desc, style: style2,),
          const SizedBox(height: 8,),
          Image.network(imageURL)
        ],
      ),
    );
  }
}