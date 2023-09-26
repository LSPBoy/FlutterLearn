import 'package:flutter/material.dart';
import 'package:lsp_flutter/douban/pages/home/home_movie_item.dart';
import 'package:lsp_flutter/douban/model/home_model.dart';
class LSPHomeContent extends StatefulWidget {
  const LSPHomeContent({super.key});

  @override
  State<LSPHomeContent> createState() => _LSPHomeContentState();
}

class _LSPHomeContentState extends State<LSPHomeContent> {

  final List<MovieItem> movies = [];

  @override
  void initState() {
    super.initState();
    //发送网络请求
    // HomeRequest.requestMovieList(0).then((res) {
    //   setState(() {
    //     movies.addAll(res);
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext ctx, int index) {
      return LSPHomeMovieItem();
    }, itemCount: 20,);
  }
}
