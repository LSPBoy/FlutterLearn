import 'package:flutter/material.dart';
import 'package:lsp_flutter/douban/widgets/dashed_line.dart';
import 'package:lsp_flutter/douban/widgets/star_rating.dart';

class LSPHomeMovieItem extends StatelessWidget {
  // final MovieItem movie;

  const LSPHomeMovieItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 8, color: Color(0xffcccccc)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildRanking(), //排名
          const SizedBox(
            height: 8,
          ),
          buildContent(), //中间部分内容
          const SizedBox(
            height: 8,
          ),
          buildFooter(), //底部真实电影名称
        ],
      ),
    );
  }

  // 1.排名
  Widget buildRanking() {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 238, 205, 144),
          borderRadius: BorderRadius.circular(3)),
      child: const Text(
        "No.1",
        style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 131, 95, 36)),
      ),
    );
  }

  // 2.内容的布局
  Widget buildContent() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildContentImage(),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: IntrinsicHeight(
          child: Row(
            children: [
              buildContentInfo(),
              const SizedBox(
                width: 8,
              ),
              buildContentLine(),
              const SizedBox(
                width: 8,
              ),
              buildContentWish()
            ],
          ),
        )),
      ],
    );
  }

  // 2.1.内容的图片
  Widget buildContentImage() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          "https://img1.baidu.com/it/u=552975723,3077666448&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=735",
          height: 100,
          width: 120,
          fit: BoxFit.fill,
        ));
  }

  // 2.2.内容的信息
  Widget buildContentInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildContentInfoTitle(),
          const SizedBox(
            height: 8,
          ),
          buildContentInfoRate(),
          const SizedBox(
            height: 8,
          ),
          buildContentInfoDesc()
        ],
      ),
    );
  }

  Widget buildContentInfoTitle() {
    return Text.rich(TextSpan(children: [
      const WidgetSpan(
          child: Icon(
            Icons.play_circle_outline,
            color: Colors.pink,
            size: 22,
          ),
          baseline: TextBaseline.ideographic,
          alignment: PlaceholderAlignment.middle),
      ..."肖申克的救赎之大圣归来".runes.map((rune) {
        return WidgetSpan(
            child: Text(
              new String.fromCharCode(rune),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            alignment: PlaceholderAlignment.middle);
      }).toList(),
      const WidgetSpan(
          child: Text("(1994)"),
          style: TextStyle(fontSize: 18, color: Colors.grey))
    ]));
  }

  Widget buildContentInfoRate() {
    return const Row(
      children: <Widget>[
        StarRating(
          rating: 9.2,
          size: 20,
          maxRating: 10,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          "9.2",
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }

  Widget buildContentInfoDesc() {
    // 1.字符串拼接
    // final genresString = movie.genres.join(" ");
    // final directorString = movie.director.name;
    // List<Actor> casts = movie.casts;
    // final actorString = movie.casts.map((item) => item.name).join(" ");

    return const Text(
      "剧情 喜剧 爱情 犯罪 / 弗兰克.肯尼迪 / 弗里曼",
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: 16),
    );
  }

  // 2.3.内容的虚线
  Widget buildContentLine() {
    return const SizedBox(
      height: 100,
      child: DashedLine(
        axis: Axis.vertical,
        dashedWidth: .4,
        dashedHeight: 6,
        count: 10,
        color: Colors.pink,
      ),
    );
  }

  // 2.4.内容的想看
  Widget buildContentWish() {
    return SizedBox(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            "assets/images/home/wish.png",
            width: 25,
            height: 25,
          ),
          const Text(
            "想看",
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 235, 170, 60)),
          )
        ],
      ),
    );
  }

  // 3.尾部的布局
  Widget buildFooter() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xfff2f2f2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Text(
        "The Shawshank Redemption",
        style: TextStyle(fontSize: 20, color: Color(0xff666666)),
      ),
    );
  }
}
